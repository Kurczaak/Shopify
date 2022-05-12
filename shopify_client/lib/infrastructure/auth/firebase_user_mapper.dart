import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/core/value_objects.dart';

extension FirebaseUserDomainX on User {
  ShopifyUser toDomain() {
    return ShopifyUser(id: UniqueId.fromUniqueString(uid));
  }
}
