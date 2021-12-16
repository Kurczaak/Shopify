import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopify_client/domain/auth/user.dart';
import 'package:shopify_client/domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  ShopifyUser toDomain() {
    return ShopifyUser(id: UniqueId.fromUniqueString(uid));
  }
}
