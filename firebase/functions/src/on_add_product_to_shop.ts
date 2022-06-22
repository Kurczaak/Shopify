import * as functions from "firebase-functions";
import * as admin from "firebase-admin";

exports.createPricedProduct = functions.firestore
    .document("shops/{shopId}/products/{productId}")
    .onCreate(async (snapshot, context) => {
      const shopId = context.params.shopId;
      const shopProduct = snapshot.data();
      const db = admin.firestore();
      const productDocument = db.collection("products").
          doc(shopProduct.productId);
      const productSnapshot = await productDocument.get();
      const product = productSnapshot.data();
      const shop = (await db.collection("shops").
          doc(shopId).get()).data();

      if (product != null && shop != null) {
        const newdoc = db.collection("pricedProducts").add({
          "productId": shopProduct.productId,
          "barcode": product.barcode,
          "name": product.name,
          "brand": product.brand,
          "category": product.category,
          "weight": product.weight,
          "photo": product.photosUrls[0],
          "price": shopProduct.price,
          "shopId": shopId,
        });
        return newdoc;
      }
      return null;
    });


exports.addShopToProductsShops = functions.firestore
    .document("shops/{shopId}/products/{shopProductId}")
    .onCreate(async (snapshot, context) => {
      const shopId = context.params.shopId;
      const shopProduct = snapshot.data();
      const db = admin.firestore();
      const productDocument = db.collection("products").
          doc(shopProduct.productId);
      const productSnapshot = await productDocument.get();
      const product = productSnapshot.data();

      const shopDocument = db.collection("shops").doc(shopId);
      const shopSnapshot = await shopDocument.get();
      const shop = shopSnapshot.data();

      if (product != null && shop != null) {
        const newdoc = productDocument.collection("shops").doc(shopId).set({
          "position": shop.position,
          "address": shop.address,
          "logoUrl": shop.logoUrl,
          "week": shop.week,
          "shopName": shop.shopName,
          "price": shopProduct.price,
        });
        return newdoc;
      }
      return null;
    });
