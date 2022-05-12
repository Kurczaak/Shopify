import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:shopify_client/domain/core/errors.dart';
import 'package:shopify_client/injection.dart';
import 'package:shopify_domain/auth/i_auth_facade.dart';

extension FirestoreX on FirebaseFirestore {
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw NotAuthenticatedError());
    return FirebaseFirestore.instance
        .collection('users')
        .doc(user.id.getOrCrash());
  }

  CollectionReference<Map<String, dynamic>> get usersCollection =>
      collection('users');
  CollectionReference<Map<String, dynamic>> get shopsCollection =>
      collection('shops');
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get shopCollection => collection('shops');
}

extension StorageX on FirebaseStorage {
  Reference get shopLogosReference => ref('images/shop_logos');
}
