import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import { HttpsError } from 'firebase-functions/v1/auth';

exports.createOrder = functions.https.onCall(async (data, context) => {
    const { cartId } = data;
    if (context.auth == null) return null;
    const { uid } = context.auth;


    const db = admin.firestore();
    const cartDocumentReference = db.collection('carts').doc(cartId);
    const cartDocumentSnapshot = await cartDocumentReference.get();
    if (!cartDocumentSnapshot.exists) {
        throw new HttpsError("not-found", 'cart not found');
    }
    const cartData = cartDocumentSnapshot.data();
    // Check if cart document contains data
    if (cartData == null) { throw new HttpsError("data-loss", 'cart data has been lost'); }
    // Check if cart belongs to the requesting user
    if (cartData.userId != uid) { throw new HttpsError("permission-denied", 'this cart belongs to another user'); }

    // Create order
    const orderDocumentReference = await db.collection('orders').add(
        {
            "status": "pending",
            "cart": cartData,
            "timestamp": admin.firestore.FieldValue.serverTimestamp()
        }
    );

    // Copy cart items
    const orderItemsCollectionReference = orderDocumentReference.collection('orderItems');
    const cartItemsCollectionReference = cartDocumentReference.collection('cartItems')
    const cartItemsCollectionSnapshot = await cartItemsCollectionReference.get();
    try {
        cartItemsCollectionSnapshot.docs.forEach(
            async (doc) => {
                await orderItemsCollectionReference.add(doc.data());
            }
        );
    } catch (_) {
        await deleteSnapshotBatch(db, cartItemsCollectionSnapshot);
        await orderDocumentReference.delete();
    }
    // delete cart items
    await deleteSnapshotBatch(db, cartItemsCollectionSnapshot);
    // delete cart
    await cartDocumentReference.delete();

    return orderDocumentReference;
});



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