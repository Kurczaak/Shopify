import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

exports.addToCart = functions.https.onCall(async (data, context) => {
  // Data passed to the function
  const {pricedProductId} = data;
  const {quantity} = data;
  const {shopId} = data;
  // User info
  if (context.auth == null) return null;
  const {uid} = context.auth;
  const db = admin.firestore();
  // Priced product
  const pricedProductDoc = db.collection("pricedProducts").doc(pricedProductId);
  const pricedProductSnapshot = await pricedProductDoc.get();
  const pricedProduct = pricedProductSnapshot.data();

  const cartQuery = db.collection("carts").where("shopId", "==", shopId).where("userId", "==", uid);
  const cartSnapshot = await cartQuery.get();

  if (cartSnapshot.docs.length > 1) {
    throw new functions.https.HttpsError("failed-precondition", "Too many results");
  } else if (cartSnapshot.docs.length == 0) {
    const cart = await db.collection("carts").add({
      "shopId": shopId,
      "userId": uid,
    });
    const doc = cart.collection("cartItems").add(
      {
        "pricedProduct": pricedProduct,
        "quantity": quantity,
      }
    );
    return doc;
  } else {
    const cartDoc = cartSnapshot.docs[0];
    if (!cartDoc.exists) {
      throw new functions.https.HttpsError("failed-precondition", "Something went wrong");
    }
    const doc = cartDoc.ref.update({
      "quantity": admin.firestore.FieldValue.increment(quantity),
    });
    return doc;
  }
});
