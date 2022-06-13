import * as functions from "firebase-functions";
import * as admin from "firebase-admin";
/* eslint @typescript-eslint/no-var-requires: "off" */

// // Start writing Firebase Functions
// // https://firebase.google.com/docs/functions/typescript
//
// export const helloWorld = functions.https.onRequest((request, response) => {
//   functions.logger.info("Hello logs!", {structuredData: true});
//   response.send("Hello from Firebase!");
// });
admin.initializeApp();

export const onaddProduct = functions.firestore
    .document("shops/{shopId}/products/{shopProductId}")
    .onCreate(async (snapshot, context) => {
      const shopId = context.params.shopId;
      const shopProdId = context.params.shopProductId;
      const shopProduct = snapshot.data();
      const db = admin.firestore();
      const productDocument = db.collection("products").
          doc(shopProduct.productId);
      const productSnapshot = await productDocument.get();
      const product = productSnapshot.data();
      const shop = (await db.collection("shops").
          doc(shopId).get()).data();
      const util = require("util");
      console.log(util.inspect(shopId, {showHidden: false, depth: null}));
      console.log(util.inspect(shopProdId, {showHidden: false, depth: null}));
      if (product != null && shop != null) {
        const newdoc = db.collection("addedProducts").add({
          "productId": shopProduct.productId,
          "barcode": product.barcode,
          "productName": product.name,
          "productCategory": product.category,
          "weight": product.weight,
          "shopProductId": shopProdId,
          "productPhotos": product.photosUrls,
          "price": shopProduct.price,
          "shopId": shopId,
          "shopName": shop.shopName,
          "shopLogo": shop.logoUrl,
          "position": shop.position,
          "address": shop.address,
        });
        return newdoc;
      }
      return null;
    });


