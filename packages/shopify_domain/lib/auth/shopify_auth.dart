import 'package:dartz/dartz.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/auth/value_objects.dart';
import 'package:shopify_domain/src/injection.dart';

import 'auth_failure.dart';

abstract class ShopifyAuth {
  Future<Option<ShopifyUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();

  static ShopifyAuth get instance => getIt<ShopifyAuth>();
}
