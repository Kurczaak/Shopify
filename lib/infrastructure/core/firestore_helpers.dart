import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';
import 'package:shopify_manager/domain/core/errors.dart';
import 'package:shopify_manager/injection.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }

  CollectionReference get usersCollection => collection('users');
  CollectionReference get shopsCollection => collection('shops');
  CollectionReference get productsCollection => collection('products');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get shopCollection => collection('shops');
}

extension StorageX on FirebaseStorage {
  Reference get shopLogosReference => ref('images/shop_logos');
  Reference get productPhotosReference => ref('images/product_photos');
}
