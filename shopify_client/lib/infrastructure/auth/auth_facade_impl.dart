import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_domain/auth.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacadeImpl implements IAuthFacade {
  final ShopifyAuth shopifyAuth;

  AuthFacadeImpl(this.shopifyAuth);
  @override
  Future<Option<ShopifyUser>> getSignedInUser() {
    return shopifyAuth.getSignedInUser();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    return shopifyAuth.registerWithEmailAndPassword(
        emailAddress: emailAddress, password: password);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    return shopifyAuth.signInWithEmailAndPassword(
        emailAddress: emailAddress, password: password);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    return shopifyAuth.signInWithGoogle();
  }

  @override
  Future<void> signOut() {
    return shopifyAuth.signOut();
  }
}
