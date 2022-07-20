import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
import { HttpsError } from 'firebase-functions/v1/auth';


exports.addToFavourites = functions.https.onCall(async (data, context) => {
    // Data passed to the function
    const { productId } = data;
    // User info
    if (context.auth == null) return null;
    const { uid } = context.auth;
    const db = admin.firestore();

    // product
    const productReference = db.collection("products").doc(productId);
    const productSnapshot = await productReference.get();
    if (!productSnapshot.exists) {
        throw new HttpsError("not-found", 'product not found');
    }
    const productData = productSnapshot.data();
    if (productData == null) {
        throw new HttpsError("unavailable", 'product data unavailable');
    }


    const favouritesQuery = db.collection("favourites").where("productId", "==", productId).where("userId", "==", uid);

    const favouriteDocument = await getDocumentOrCrash(favouritesQuery);
    if (favouriteDocument == null) {
        const favourite = await db.collection("favourites").add({
            "productId": productSnapshot.id,
            "barcode": productData.barcode,
            "weight": productData.weight,
            "name": productData.name,
            "brand": productData.brand,
            "category": productData.category,
            "photo": productData.photosUrls[0],
            "userId": uid
        });

        return favourite;
    } else {
        throw new HttpsError("already-exists", 'the product already exists in your favourites');
    }
});



exports.removeFromFavourites = functions.https.onCall(async (data, context) => {
    // Data passed to the function
    const { productId } = data;
    // User info
    if (context.auth == null) return null;
    const { uid } = context.auth;
    const db = admin.firestore();

    // product
    const productReference = db.collection("products").doc(productId);
    const productSnapshot = await productReference.get();
    if (!productSnapshot.exists) {
        throw new HttpsError("not-found", 'product not found');
    }

    const favouritesQuery = db.collection("favourites").where("productId", "==", productId).where("userId", "==", uid);

    const favouriteDocument = await getDocumentOrCrash(favouritesQuery);
    if (favouriteDocument == null) {
        throw new HttpsError("not-found", 'the product could not be found in your favourites');
    } else {
        await favouriteDocument.delete();
        return null;
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