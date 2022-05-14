import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_domain/auth.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacadeImpl implements IAuthFacade {
  @override
  Future<Option<ShopifyUser>> getSignedInUser() {
    return ShopifyAuth.instance.getSignedInUser();
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    return ShopifyAuth.instance.registerWithEmailAndPassword(
        emailAddress: emailAddress, password: password);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) {
    return ShopifyAuth.instance.signInWithEmailAndPassword(
        emailAddress: emailAddress, password: password);
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() {
    return ShopifyAuth.instance.signInWithGoogle();
  }

  @override
  Future<void> signOut() {
    return ShopifyAuth.instance.signOut();
  }
}
