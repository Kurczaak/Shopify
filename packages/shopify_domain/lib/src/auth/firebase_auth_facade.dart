import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:shopify_domain/auth.dart';
import 'package:shopify_domain/core/network/network_info.dart';
import 'package:shopify_domain/src/auth/firebase_user_mapper.dart';
import 'package:shopify_domain/core/config.dart';

@LazySingleton(as: ShopifyAuth)
class FirebaseAuthFacade implements ShopifyAuth {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final NetworkInfo _networkInfo;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn, this._networkInfo);

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
    if (!await _networkInfo.isConnected) {
      return left(const AuthFailure.noInternetConnection());
    } else {
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
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    if (!await _networkInfo.isConnected) {
      return left(const AuthFailure.noInternetConnection());
    } else {
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
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    if (!await _networkInfo.isConnected) {
      return left(const AuthFailure.noInternetConnection());
    }
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
    } on FirebaseAuthException {
      return left(const AuthFailure.serverSerror());
    } on TimeoutException catch (_) {
      return left(const AuthFailure.timeOut(timeoutDuration));
    } on PlatformException catch (e) {
      if (e.code == GoogleSignIn.kNetworkError) {
        return left(const AuthFailure.noInternetConnection());
      } else if (e.code == GoogleSignIn.kSignInRequiredError) {
        await _googleSignIn.signOut();
      } else if (e.code == GoogleSignIn.kSignInFailedError) {
        return left(const AuthFailure.serverSerror());
      } else if (e.code == GoogleSignIn.kSignInCanceledError) {
        return left(const AuthFailure.cancelledByUser());
      }
      rethrow;
    }
  }

  @override
  Future<void> signOut() =>
      Future.wait([_firebaseAuth.signOut(), _googleSignIn.signOut()]);
}
