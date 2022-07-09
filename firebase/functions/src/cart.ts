import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import { HttpsError } from 'firebase-functions/v1/auth';


exports.onCartItemChanged = functions.firestore.document("carts/{cartId}/cartItems/{cartItemId}").onWrite(async (snapshot, context) => {
  const { cartId } = context.params;
  const cartItem = snapshot.after.data();
  const cartItemDoc = snapshot.after.ref;
  const db = admin.firestore();
  const cartDocument = db.collection('carts').doc(cartId);
  if (cartDocument == null) {
    throw new HttpsError("not-found", 'cart document not found');
  }
  if (cartItem == null) {
    return null;
  }
  if (cartItem.quantity <= 0) {
    await cartDocument.update({
      "timestamp": admin.firestore.FieldValue.serverTimestamp(),
    });
    await cartItemDoc.delete();
    const cartItemsCollection = await cartDocument.collection('cartItems').get();
    if (cartItemsCollection.size == 0) {
      await cartDocument.delete();
    }
  }
  return null;
});

exports.onCartChanged = functions.firestore.document("carts/{cartId}").onWrite(async (snapshot, context) => {
  const { cartId } = context.params;

  const db = admin.firestore();
  const cartDocument = db.collection('carts').doc(cartId);
  if (cartDocument == null) {
    throw new HttpsError("not-found", 'cart document not found');
  }
  const cartItemsCollectionReference = cartDocument.collection('cartItems');
  const cartItesmCollection = await cartItemsCollectionReference.get();
  if (cartItesmCollection.size <= 0) {
    await cartDocument.delete();
  }
  return null;
});

exports.deleteCartItem = functions.https.onCall(async (data, context) => {
  const { shopId } = data;
  const { cartItemId } = data;
  if (context.auth == null) return null;
  const { uid } = context.auth;
  const db = admin.firestore();

  const cartQuery = db.collection("carts").where("shopId", "==", shopId).where("userId", "==", uid);

  const cartDocument = await getDocumentOrCrash(cartQuery);
  if (cartDocument == null) { // User does not have a cart
    throw new HttpsError("not-found", 'cart not found');
  } else {
    // Check if the product has already been added
    const itemDocReference = cartDocument.collection('cartItems').doc(cartItemId);
    const itemDoc = await itemDocReference.get();

    if (!itemDoc.exists) {
      throw new HttpsError("not-found", 'cart item not found');
    } else {
      const doc = await itemDocReference.delete();
      await cartDocument.update({
        "timestamp": admin.firestore.FieldValue.serverTimestamp(),
      });
      return doc;
    }
  }
});

exports.deleteCart = functions.https.onCall(async (data, context) => {
  const { shopId } = data;
  if (context.auth == null) return null;
  const { uid } = context.auth;
  const db = admin.firestore();

  const cartQuery = db.collection("carts").where("shopId", "==", shopId).where("userId", "==", uid);

  const cartDocument = await getDocumentOrCrash(cartQuery);
  if (cartDocument == null) { // User does not have a cart
    throw new HttpsError("not-found", 'cart not found');
  } else {
    const cartItemsCollection = await cartDocument.collection('cartItems').get();
    await deleteSnapshotBatch(db, cartItemsCollection);

    return await cartDocument.delete();
  }
});





exports.incrementCartItem = functions.https.onCall(async (data, context) => {
  const { shopId } = data;
  const { cartItemId } = data;
  if (context.auth == null) return null;
  const { uid } = context.auth;
  const db = admin.firestore();

  const cartQuery = db.collection("carts").where("shopId", "==", shopId).where("userId", "==", uid);

  const cartDocument = await getDocumentOrCrash(cartQuery);
  if (cartDocument == null) { // User does not have a cart
    throw new HttpsError("not-found", 'cart not found');
  } else {
    // Check if the product has already been added
    const itemDocReference = cartDocument.collection('cartItems').doc(cartItemId);
    const itemDoc = await itemDocReference.get();

    if (!itemDoc.exists) {
      throw new HttpsError("not-found", 'cart item not found');
    } else {
      const doc = await itemDocReference.update({
        "quantity": admin.firestore.FieldValue.increment(1),
      });
      await cartDocument.update({
        "timestamp": admin.firestore.FieldValue.serverTimestamp(),
      });
      return doc;
    }
  }
});

exports.decrementCartItem = functions.https.onCall(async (data, context) => {
  const { shopId } = data;
  const { cartItemId } = data;
  if (context.auth == null) return null;
  const { uid } = context.auth;
  const db = admin.firestore();

  const cartQuery = db.collection("carts").where("shopId", "==", shopId).where("userId", "==", uid);

  const cartDocument = await getDocumentOrCrash(cartQuery);
  if (cartDocument == null) { // User does not have a cart
    throw new HttpsError("not-found", 'cart not found');
  } else {
    // Check if the product has already been added
    const itemDocReference = cartDocument.collection('cartItems').doc(cartItemId);
    const itemDoc = await itemDocReference.get();

    if (!itemDoc.exists) {
      throw new HttpsError("not-found", 'cart item not found');
    } else {
      const doc = await itemDocReference.update({
        "quantity": admin.firestore.FieldValue.increment(-1),
      });
      await cartDocument.update({
        "timestamp": admin.firestore.FieldValue.serverTimestamp(),
      });
      return doc;
    }
  }
});


exports.addToCart = functions.https.onCall(async (data, context) => {
  // Data passed to the function
  const { pricedProductId } = data;
  const { quantity } = data;
  const { shopId } = data;
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

async function deleteSnapshotBatch(db: admin.firestore.Firestore, snapshot: admin.firestore.QuerySnapshot<admin.firestore.DocumentData>) {
  admin.database


  const batchSize = snapshot.size;
  if (batchSize === 0) {
    // When there are no documents left, we are done

    return;
  }

  // Delete documents in a batch
  const batch = db.batch();
  snapshot.docs.forEach((doc) => {
    batch.delete(doc.ref);
  });
  await batch.commit();

  // Recurse on the next process tick, to avoid
  // exploding the stack.
  process.nextTick(() => {
    deleteSnapshotBatch(db, snapshot);
  });
}