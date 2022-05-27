import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/src/auth/firebase_user_mapper.dart';
import 'package:shopify_domain/src/core/config.dart';

@LazySingleton(as: ShopifyAuth)
class FirebaseAuthFacade implements ShopifyAuth {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Option<ShopifyUser>> getSignedInUser() async {
    final firebaseUser = _firebaseAuth.currentUser;
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
      await _firebaseAuth
          .createUserWithEmailAndPassword(
              email: emailAddressString, password: passwordString)
          .timeout(timeoutDuration, onTimeout: () {
        throw TimeoutException('Connection timeout ', timeoutDuration);
      });
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == "email-already-in-use") {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverSerror());
      }
    } on TimeoutException catch (_) {
      return left(const AuthFailure.timeOut(timeoutDuration));
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
      await _firebaseAuth
          .signInWithEmailAndPassword(
              email: emailAddressString, password: passwordString)
          .timeout(timeoutDuration, onTimeout: () {
        throw TimeoutException('Connection timeout ', timeoutDuration);
      });
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverSerror());
      }
    } on TimeoutException catch (_) {
      return left(const AuthFailure.timeOut(timeoutDuration));
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

        await _firebaseAuth
            .signInWithCredential(authCredential)
            .timeout(timeoutDuration, onTimeout: () {
          throw TimeoutException('Connection timeout ', timeoutDuration);
        });
        return right(unit);
      } else {
        return left(const AuthFailure.cancelledByUser());
      }
    } on FirebaseAuthException catch (_) {
      return left(const AuthFailure.serverSerror());
    } on TimeoutException catch (_) {
      return left(const AuthFailure.timeOut(timeoutDuration));
    }
  }

  @override
  Future<void> signOut() =>
      Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);
}
