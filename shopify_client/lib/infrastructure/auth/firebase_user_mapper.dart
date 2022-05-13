import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/core.dart';

extension FirebaseUserDomainX on User {
  ShopifyUser toDomain() {
    return ShopifyUser(id: UniqueId.fromUniqueString(uid));
  }
}
