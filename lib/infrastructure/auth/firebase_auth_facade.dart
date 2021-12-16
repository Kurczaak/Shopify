import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_client/domain/auth/auth_failure.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/auth/user.dart';
import 'package:shopify_client/domain/auth/value_objects.dart';
import 'package:shopify_client/infrastructure/auth/firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Option<ShopifyUser>> getSignedInUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
    // print(firebaseUser);
    // return optionOf(ShopifyUser(id: UniqueId()));
    //TODO remove
    // if (firebaseUser != null) {
    //   return some(ShopifyUser(id: UniqueId.fromUniqueString(firebaseUser.uid)));
    // }
    // return none();

    firebaseUser?.toDomain();
    return optionOf(firebaseUser?.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverSerror());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordString = password.getOrCrash();
    try {
      UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
              email: emailAddressString, password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverSerror());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final accountOrNull = await _googleSignIn.signIn();
      if (accountOrNull != null) {
        final authentication = await accountOrNull.authentication;
        final authCredential = GoogleAuthProvider.credential(
            accessToken: authentication.accessToken,
            idToken: authentication.idToken);
        await _firebaseAuth.signInWithCredential(authCredential);
        return right(unit);
      } else {
        return left(const AuthFailure.cancelledByUser());
      }
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverSerror());
    }
  }

  @override
  Future<void> singOut() {
    // TODO: implement singOut
    throw UnimplementedError();
  }
}
