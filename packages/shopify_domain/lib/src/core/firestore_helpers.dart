import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/core.dart';
import 'package:shopify_domain/src/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<ShopifyAuth>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return collection('users').doc(user.id.getOrCrash());
  }

  Future<CollectionReference> userShops() async {
    final userDoc = await userDocument();
    return userDoc.shopCollection;
  }

  Future<CollectionReference> userCarts() async {
    final userDoc = await userDocument();
    return userDoc.cartsCollection;
  }

  CollectionReference get usersCollection => collection('users');
  CollectionReference get shopsCollection => collection('shops');
  CollectionReference get productsCollection => collection('products');
  CollectionReference get cartsCollection => collection('carts');
  CollectionReference get ordersCollection => collection('orders');
  CollectionReference get favouritesCollection => collection('favourites');
  CollectionReference get pricedProductsCollection =>
      collection('pricedProducts');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get shopCollection => collection('shops');
  CollectionReference get cartsCollection => collection('carts');
}

extension StorageX on FirebaseStorage {
  Reference get shopLogosReference => ref('images/shop_logos');
  Reference get productPhotosReference => ref('images/product_photos');
}
