import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_manager/domain/auth/i_auth_facade.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final ShopifyAuth _shopifyAuth;

  FirebaseAuthFacade(this._shopifyAuth);

  @override
  Future<Option<ShopifyUser>> getSignedInUser() {
    return _shopifyAuth.getSignedInUser();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    return _shopifyAuth.registerWithEmailAndPassword(
        emailAddress: emailAddress, password: password);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    return _shopifyAuth.signInWithEmailAndPassword(
        emailAddress: emailAddress, password: password);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    return _shopifyAuth.signInWithGoogle();
  }

  @override
  Future<void> signOut() {
    return _shopifyAuth.signOut();
  }
}
