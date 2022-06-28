import * as functions from "firebase-functions";
import * as admin from "firebase-admin";




exports.addToCart = functions.https.onCall(async (data, context) => {
  // Data passed to the function
  const { pricedProductId } = data;
  const { quantity } = data;
  const { shopId } = data;
  functions.logger.log("pricedProductId", pricedProductId);
  functions.logger.log("quantity", quantity);
  functions.logger.log("shopId", shopId);
  // User info
  if (context.auth == null) return null;
  const { uid } = context.auth;
  const db = admin.firestore();
  // Priced product
  const pricedProductDoc = db.collection("pricedProducts").doc(pricedProductId);
  const pricedProductSnapshot = await pricedProductDoc.get();
  const pricedProduct = pricedProductSnapshot.data();

  // Shop
  const shopDoc = db.collection("shops").doc(shopId);
  const shopSnapshot = await shopDoc.get();
  const shop = shopSnapshot.data();

  const cartQuery = db.collection("carts").where("shopId", "==", shopId).where("userId", "==", uid);

  const cartDocument = await getDocumentOrCrash(cartQuery);
  if (cartDocument == null) { // User does not have a cart
    const carts = await db.collection("carts").add({
      "shopId": shopId,
      "shop": shop,
      "userId": uid,
      "timestamp": admin.firestore.FieldValue.serverTimestamp()
    });
    const cart = carts.collection("cartItems").add(
      {
        "pricedProduct": pricedProduct,
        "pricedProductId": pricedProductId,
        "quantity": quantity,
      }
    );
    return cart;
  } else { // User has a cart for the shop
    // Update the timestamp
    cartDocument.update({
      "timestamp": admin.firestore.FieldValue.serverTimestamp(),
    });

    // Check if the product has already been added
    const itemQuery = cartDocument.collection('cartItems').where("pricedProductId", "==", pricedProductId);
    const itemDoc = await getDocumentOrCrash(itemQuery);

    if (itemDoc == null) // Add new item
    {
      const doc = cartDocument.collection("cartItems").add({
        "pricedProduct": pricedProduct,
        "pricedProductId": pricedProductId,
        "quantity": quantity,
      });
      return doc;
    } else {
      const doc = itemDoc.update({
        "quantity": admin.firestore.FieldValue.increment(quantity),
      });
      return doc;
    }
  }
});


async function getDocumentOrCrash(query: admin.firestore.Query<admin.firestore.DocumentData>): Promise<admin.firestore.DocumentReference<admin.firestore.DocumentData> | null> {
  const snapshots = await query.get();
  if (snapshots.docs.length >= 1) {
    return snapshots.docs[0].ref;
  } else {
    return null;
  }
}