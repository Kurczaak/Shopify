// Mocks generated by Mockito 5.1.0 from annotations
// in shopify_domain/test/infrastructure/shop/firebase_shop_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i11;
import 'dart:io' as _i18;
import 'dart:typed_data' as _i17;

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dartz/dartz.dart' as _i6;
import 'package:firebase_core/firebase_core.dart' as _i7;
import 'package:firebase_storage/firebase_storage.dart' as _i8;
import 'package:firebase_storage_platform_interface/firebase_storage_platform_interface.dart'
    as _i9;
import 'package:geoflutterfire/src/collection/default.dart' as _i2;
import 'package:geoflutterfire/src/collection/with_converter.dart' as _i3;
import 'package:geoflutterfire/src/geoflutterfire.dart' as _i10;
import 'package:geoflutterfire/src/models/distance_doc_snapshot.dart' as _i12;
import 'package:geoflutterfire/src/models/point.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shopify_domain/auth/auth_failure.dart' as _i15;
import 'package:shopify_domain/auth/shopify_auth.dart' as _i13;
import 'package:shopify_domain/auth/user.dart' as _i14;
import 'package:shopify_domain/auth/value_objects.dart' as _i16;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeGeoFireCollectionRef_0 extends _i1.Fake
    implements _i2.GeoFireCollectionRef {}

class _FakeGeoFireCollectionWithConverterRef_1<T> extends _i1.Fake
    implements _i3.GeoFireCollectionWithConverterRef<T> {}

class _FakeGeoFirePoint_2 extends _i1.Fake implements _i4.GeoFirePoint {}

class _FakeDocumentReference_3<T extends Object?> extends _i1.Fake
    implements _i5.DocumentReference<T> {}

class _FakeOption_4<A> extends _i1.Fake implements _i6.Option<A> {}

class _FakeEither_5<L, R> extends _i1.Fake implements _i6.Either<L, R> {}

class _FakeFirebaseApp_6 extends _i1.Fake implements _i7.FirebaseApp {}

class _FakeSettings_7 extends _i1.Fake implements _i5.Settings {}

class _FakeCollectionReference_8<T extends Object?> extends _i1.Fake
    implements _i5.CollectionReference<T> {}

class _FakeWriteBatch_9 extends _i1.Fake implements _i5.WriteBatch {}

class _FakeLoadBundleTask_10 extends _i1.Fake implements _i5.LoadBundleTask {}

class _FakeQuerySnapshot_11<T extends Object?> extends _i1.Fake
    implements _i5.QuerySnapshot<T> {}

class _FakeQuery_12<T extends Object?> extends _i1.Fake
    implements _i5.Query<T> {}

class _FakeFirebaseFirestore_13 extends _i1.Fake
    implements _i5.FirebaseFirestore {}

class _FakeFirebaseStorage_14 extends _i1.Fake implements _i8.FirebaseStorage {}

class _FakeReference_15 extends _i1.Fake implements _i8.Reference {}

class _FakeFullMetadata_16 extends _i1.Fake implements _i9.FullMetadata {}

class _FakeListResult_17 extends _i1.Fake implements _i8.ListResult {}

class _FakeUploadTask_18 extends _i1.Fake implements _i8.UploadTask {}

class _FakeDownloadTask_19 extends _i1.Fake implements _i8.DownloadTask {}

class _FakeDuration_20 extends _i1.Fake implements Duration {}

class _FakeTaskSnapshot_21 extends _i1.Fake implements _i8.TaskSnapshot {}

class _FakeDocumentSnapshot_22<T extends Object?> extends _i1.Fake
    implements _i5.DocumentSnapshot<T> {}

class _FakeSnapshotMetadata_23 extends _i1.Fake
    implements _i5.SnapshotMetadata {}

/// A class which mocks [Geoflutterfire].
///
/// See the documentation for Mockito's code generation for more information.
class MockGeoflutterfire extends _i1.Mock implements _i10.Geoflutterfire {
  MockGeoflutterfire() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.GeoFireCollectionRef collection(
          {_i5.Query<Map<String, dynamic>>? collectionRef}) =>
      (super.noSuchMethod(
          Invocation.method(#collection, [], {#collectionRef: collectionRef}),
          returnValue:
              _FakeGeoFireCollectionRef_0()) as _i2.GeoFireCollectionRef);
  @override
  _i3.GeoFireCollectionWithConverterRef<T> collectionWithConverter<T>(
          {_i5.Query<T>? collectionRef}) =>
      (super.noSuchMethod(
              Invocation.method(#collectionWithConverter, [],
                  {#collectionRef: collectionRef}),
              returnValue: _FakeGeoFireCollectionWithConverterRef_1<T>())
          as _i3.GeoFireCollectionWithConverterRef<T>);
  @override
  _i2.GeoFireCollectionRef customCollection(
          {_i5.Query<Map<String, dynamic>>? collectionRef}) =>
      (super.noSuchMethod(
              Invocation.method(
                  #customCollection, [], {#collectionRef: collectionRef}),
              returnValue: _FakeGeoFireCollectionRef_0())
          as _i2.GeoFireCollectionRef);
  @override
  _i4.GeoFirePoint point({double? latitude, double? longitude}) =>
      (super.noSuchMethod(
          Invocation.method(
              #point, [], {#latitude: latitude, #longitude: longitude}),
          returnValue: _FakeGeoFirePoint_2()) as _i4.GeoFirePoint);
}

/// A class which mocks [GeoFireCollectionRef].
///
/// See the documentation for Mockito's code generation for more information.
class MockGeoFireCollectionRef extends _i1.Mock
    implements _i2.GeoFireCollectionRef {
  MockGeoFireCollectionRef() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i11.Stream<List<_i5.DocumentSnapshot<Map<String, dynamic>>>> within(
          {_i4.GeoFirePoint? center,
          double? radius,
          String? field,
          bool? strictMode}) =>
      (super.noSuchMethod(
              Invocation.method(#within, [], {
                #center: center,
                #radius: radius,
                #field: field,
                #strictMode: strictMode
              }),
              returnValue: Stream<
                  List<_i5.DocumentSnapshot<Map<String, dynamic>>>>.empty())
          as _i11.Stream<List<_i5.DocumentSnapshot<Map<String, dynamic>>>>);
  @override
  _i11.Stream<
      List<_i12.DistanceDocSnapshot<Map<String, dynamic>>>> withinWithDistance(
          {_i4.GeoFirePoint? center,
          double? radius,
          String? field,
          bool? strictMode}) =>
      (super.noSuchMethod(
              Invocation.method(#withinWithDistance, [], {
                #center: center,
                #radius: radius,
                #field: field,
                #strictMode: strictMode
              }),
              returnValue:
                  Stream<List<_i12.DistanceDocSnapshot<Map<String, dynamic>>>>.empty())
          as _i11.Stream<List<_i12.DistanceDocSnapshot<Map<String, dynamic>>>>);
  @override
  _i11.Stream<List<_i5.DocumentSnapshot<Map<String, dynamic>>>> data(
          String? id) =>
      (super.noSuchMethod(Invocation.method(#data, [id]),
              returnValue: Stream<
                  List<_i5.DocumentSnapshot<Map<String, dynamic>>>>.empty())
          as _i11.Stream<List<_i5.DocumentSnapshot<Map<String, dynamic>>>>);
  @override
  _i11.Future<_i5.DocumentReference<Map<String, dynamic>>> add(
          Map<String, dynamic>? data) =>
      (super.noSuchMethod(Invocation.method(#add, [data]),
              returnValue:
                  Future<_i5.DocumentReference<Map<String, dynamic>>>.value(
                      _FakeDocumentReference_3<Map<String, dynamic>>()))
          as _i11.Future<_i5.DocumentReference<Map<String, dynamic>>>);
  @override
  _i11.Future<void> delete(dynamic id) => (super.noSuchMethod(
      Invocation.method(#delete, [id]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> setDoc(String? id, Object? data, {bool? merge = false}) =>
      (super.noSuchMethod(
              Invocation.method(#setDoc, [id, data], {#merge: merge}),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i11.Future<void>);
  @override
  _i11.Future<void> setPoint(
          String? id, String? field, double? latitude, double? longitude) =>
      (super.noSuchMethod(
              Invocation.method(#setPoint, [id, field, latitude, longitude]),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i11.Future<void>);
  @override
  _i11.Stream<List<_i5.DocumentSnapshot<Map<String, dynamic>>>> protectedWithin(
          {_i4.GeoFirePoint? center,
          double? radius,
          String? field,
          _i5.GeoPoint? Function(Map<String, dynamic>)? geopointFrom,
          bool? strictMode}) =>
      (super.noSuchMethod(
              Invocation.method(#protectedWithin, [], {
                #center: center,
                #radius: radius,
                #field: field,
                #geopointFrom: geopointFrom,
                #strictMode: strictMode
              }),
              returnValue: Stream<
                  List<_i5.DocumentSnapshot<Map<String, dynamic>>>>.empty())
          as _i11.Stream<List<_i5.DocumentSnapshot<Map<String, dynamic>>>>);
  @override
  _i11.Stream<List<_i12.DistanceDocSnapshot<Map<String, dynamic>>>>
      protectedWithinWithDistance(
              {_i4.GeoFirePoint? center,
              double? radius,
              String? field,
              _i5.GeoPoint? Function(Map<String, dynamic>)? geopointFrom,
              bool? strictMode}) =>
          (super.noSuchMethod(
              Invocation.method(#protectedWithinWithDistance, [], {
                #center: center,
                #radius: radius,
                #field: field,
                #geopointFrom: geopointFrom,
                #strictMode: strictMode
              }),
              returnValue: Stream<
                  List<
                      _i12.DistanceDocSnapshot<
                          Map<String, dynamic>>>>.empty()) as _i11
              .Stream<List<_i12.DistanceDocSnapshot<Map<String, dynamic>>>>);
  @override
  _i11.Stream<
      List<_i5.QueryDocumentSnapshot<Map<String, dynamic>>>> mergeObservable(
          Iterable<_i11.Stream<List<_i5.QueryDocumentSnapshot<Map<String, dynamic>>>>>?
              queries) =>
      (super.noSuchMethod(Invocation.method(#mergeObservable, [queries]),
              returnValue: Stream<
                  List<_i5.QueryDocumentSnapshot<Map<String, dynamic>>>>.empty())
          as _i11
              .Stream<List<_i5.QueryDocumentSnapshot<Map<String, dynamic>>>>);
}

/// A class which mocks [ShopifyAuth].
///
/// See the documentation for Mockito's code generation for more information.
class MockShopifyAuth extends _i1.Mock implements _i13.ShopifyAuth {
  MockShopifyAuth() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i11.Future<_i6.Option<_i14.ShopifyUser>> getSignedInUser() =>
      (super.noSuchMethod(Invocation.method(#getSignedInUser, []),
              returnValue: Future<_i6.Option<_i14.ShopifyUser>>.value(
                  _FakeOption_4<_i14.ShopifyUser>()))
          as _i11.Future<_i6.Option<_i14.ShopifyUser>>);
  @override
  _i11.Future<_i6.Either<_i15.AuthFailure, _i6.Unit>>
      registerWithEmailAndPassword(
              {_i16.EmailAddress? emailAddress, _i16.Password? password}) =>
          (super.noSuchMethod(
              Invocation.method(#registerWithEmailAndPassword, [],
                  {#emailAddress: emailAddress, #password: password}),
              returnValue: Future<_i6.Either<_i15.AuthFailure, _i6.Unit>>.value(
                  _FakeEither_5<_i15.AuthFailure, _i6.Unit>())) as _i11
              .Future<_i6.Either<_i15.AuthFailure, _i6.Unit>>);
  @override
  _i11.Future<_i6.Either<_i15.AuthFailure, _i6.Unit>>
      signInWithEmailAndPassword(
              {_i16.EmailAddress? emailAddress, _i16.Password? password}) =>
          (super.noSuchMethod(
              Invocation.method(#signInWithEmailAndPassword, [],
                  {#emailAddress: emailAddress, #password: password}),
              returnValue: Future<_i6.Either<_i15.AuthFailure, _i6.Unit>>.value(
                  _FakeEither_5<_i15.AuthFailure, _i6.Unit>())) as _i11
              .Future<_i6.Either<_i15.AuthFailure, _i6.Unit>>);
  @override
  _i11.Future<_i6.Either<_i15.AuthFailure, _i6.Unit>> signInWithGoogle() =>
      (super.noSuchMethod(Invocation.method(#signInWithGoogle, []),
              returnValue: Future<_i6.Either<_i15.AuthFailure, _i6.Unit>>.value(
                  _FakeEither_5<_i15.AuthFailure, _i6.Unit>()))
          as _i11.Future<_i6.Either<_i15.AuthFailure, _i6.Unit>>);
  @override
  _i11.Future<void> signOut() => (super.noSuchMethod(
      Invocation.method(#signOut, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
}

/// A class which mocks [FirebaseFirestore].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseFirestore extends _i1.Mock implements _i5.FirebaseFirestore {
  MockFirebaseFirestore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
      returnValue: _FakeFirebaseApp_6()) as _i7.FirebaseApp);
  @override
  set app(_i7.FirebaseApp? _app) =>
      super.noSuchMethod(Invocation.setter(#app, _app),
          returnValueForMissingStub: null);
  @override
  set settings(_i5.Settings? settings) =>
      super.noSuchMethod(Invocation.setter(#settings, settings),
          returnValueForMissingStub: null);
  @override
  _i5.Settings get settings => (super.noSuchMethod(Invocation.getter(#settings),
      returnValue: _FakeSettings_7()) as _i5.Settings);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
          returnValue: <dynamic, dynamic>{}) as Map<dynamic, dynamic>);
  @override
  _i5.CollectionReference<Map<String, dynamic>> collection(
          String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collection, [collectionPath]),
              returnValue: _FakeCollectionReference_8<Map<String, dynamic>>())
          as _i5.CollectionReference<Map<String, dynamic>>);
  @override
  _i5.WriteBatch batch() => (super.noSuchMethod(Invocation.method(#batch, []),
      returnValue: _FakeWriteBatch_9()) as _i5.WriteBatch);
  @override
  _i11.Future<void> clearPersistence() => (super.noSuchMethod(
      Invocation.method(#clearPersistence, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> enablePersistence(
          [_i5.PersistenceSettings? persistenceSettings]) =>
      (super.noSuchMethod(
              Invocation.method(#enablePersistence, [persistenceSettings]),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i11.Future<void>);
  @override
  _i5.LoadBundleTask loadBundle(_i17.Uint8List? bundle) =>
      (super.noSuchMethod(Invocation.method(#loadBundle, [bundle]),
          returnValue: _FakeLoadBundleTask_10()) as _i5.LoadBundleTask);
  @override
  void useFirestoreEmulator(String? host, int? port,
          {bool? sslEnabled = false}) =>
      super.noSuchMethod(
          Invocation.method(
              #useFirestoreEmulator, [host, port], {#sslEnabled: sslEnabled}),
          returnValueForMissingStub: null);
  @override
  _i11.Future<_i5.QuerySnapshot<Map<String, dynamic>>> namedQueryGet(
          String? name,
          {_i5.GetOptions? options = const _i5.GetOptions()}) =>
      (super.noSuchMethod(
          Invocation.method(#namedQueryGet, [name], {#options: options}),
          returnValue: Future<_i5.QuerySnapshot<Map<String, dynamic>>>.value(
              _FakeQuerySnapshot_11<Map<String, dynamic>>())) as _i11
          .Future<_i5.QuerySnapshot<Map<String, dynamic>>>);
  @override
  _i5.Query<Map<String, dynamic>> collectionGroup(String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collectionGroup, [collectionPath]),
              returnValue: _FakeQuery_12<Map<String, dynamic>>())
          as _i5.Query<Map<String, dynamic>>);
  @override
  _i11.Future<void> disableNetwork() => (super.noSuchMethod(
      Invocation.method(#disableNetwork, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i5.DocumentReference<Map<String, dynamic>> doc(String? documentPath) =>
      (super.noSuchMethod(Invocation.method(#doc, [documentPath]),
              returnValue: _FakeDocumentReference_3<Map<String, dynamic>>())
          as _i5.DocumentReference<Map<String, dynamic>>);
  @override
  _i11.Future<void> enableNetwork() => (super.noSuchMethod(
      Invocation.method(#enableNetwork, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Stream<void> snapshotsInSync() =>
      (super.noSuchMethod(Invocation.method(#snapshotsInSync, []),
          returnValue: Stream<void>.empty()) as _i11.Stream<void>);
  @override
  _i11.Future<T> runTransaction<T>(
          _i5.TransactionHandler<T>? transactionHandler,
          {Duration? timeout = const Duration(seconds: 30)}) =>
      (super.noSuchMethod(
          Invocation.method(
              #runTransaction, [transactionHandler], {#timeout: timeout}),
          returnValue: Future<T>.value(null)) as _i11.Future<T>);
  @override
  _i11.Future<void> terminate() => (super.noSuchMethod(
      Invocation.method(#terminate, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> waitForPendingWrites() => (super.noSuchMethod(
      Invocation.method(#waitForPendingWrites, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
}

/// A class which mocks [CollectionReference].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockCollectionReference<T extends Object?> extends _i1.Mock
    implements _i5.CollectionReference<T> {
  MockCollectionReference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  _i5.FirebaseFirestore get firestore =>
      (super.noSuchMethod(Invocation.getter(#firestore),
          returnValue: _FakeFirebaseFirestore_13()) as _i5.FirebaseFirestore);
  @override
  Map<String, dynamic> get parameters =>
      (super.noSuchMethod(Invocation.getter(#parameters),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
  @override
  _i11.Future<_i5.DocumentReference<T>> add(T? data) =>
      (super.noSuchMethod(Invocation.method(#add, [data]),
              returnValue: Future<_i5.DocumentReference<T>>.value(
                  _FakeDocumentReference_3<T>()))
          as _i11.Future<_i5.DocumentReference<T>>);
  @override
  _i5.DocumentReference<T> doc([String? path]) => (super.noSuchMethod(
      Invocation.method(#doc, [path]),
      returnValue: _FakeDocumentReference_3<T>()) as _i5.DocumentReference<T>);
  @override
  _i5.CollectionReference<R> withConverter<R extends Object?>(
          {_i5.FromFirestore<R>? fromFirestore,
          _i5.ToFirestore<R>? toFirestore}) =>
      (super.noSuchMethod(
              Invocation.method(#withConverter, [],
                  {#fromFirestore: fromFirestore, #toFirestore: toFirestore}),
              returnValue: _FakeCollectionReference_8<R>())
          as _i5.CollectionReference<R>);
  @override
  _i5.Query<T> endAtDocument(_i5.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(Invocation.method(#endAtDocument, [documentSnapshot]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> endAt(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#endAt, [values]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> endBeforeDocument(
          _i5.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(
          Invocation.method(#endBeforeDocument, [documentSnapshot]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> endBefore(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#endBefore, [values]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i11.Future<_i5.QuerySnapshot<T>> get([_i5.GetOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#get, [options]),
              returnValue: Future<_i5.QuerySnapshot<T>>.value(
                  _FakeQuerySnapshot_11<T>()))
          as _i11.Future<_i5.QuerySnapshot<T>>);
  @override
  _i5.Query<T> limit(int? limit) =>
      (super.noSuchMethod(Invocation.method(#limit, [limit]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> limitToLast(int? limit) =>
      (super.noSuchMethod(Invocation.method(#limitToLast, [limit]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i11.Stream<_i5.QuerySnapshot<T>> snapshots(
          {bool? includeMetadataChanges = false}) =>
      (super.noSuchMethod(
              Invocation.method(#snapshots, [],
                  {#includeMetadataChanges: includeMetadataChanges}),
              returnValue: Stream<_i5.QuerySnapshot<T>>.empty())
          as _i11.Stream<_i5.QuerySnapshot<T>>);
  @override
  _i5.Query<T> orderBy(Object? field, {bool? descending = false}) =>
      (super.noSuchMethod(
          Invocation.method(#orderBy, [field], {#descending: descending}),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> startAfterDocument(
          _i5.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(
          Invocation.method(#startAfterDocument, [documentSnapshot]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> startAfter(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#startAfter, [values]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> startAtDocument(
          _i5.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(
          Invocation.method(#startAtDocument, [documentSnapshot]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> startAt(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#startAt, [values]),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> where(Object? field,
          {Object? isEqualTo,
          Object? isNotEqualTo,
          Object? isLessThan,
          Object? isLessThanOrEqualTo,
          Object? isGreaterThan,
          Object? isGreaterThanOrEqualTo,
          Object? arrayContains,
          List<Object?>? arrayContainsAny,
          List<Object?>? whereIn,
          List<Object?>? whereNotIn,
          bool? isNull}) =>
      (super.noSuchMethod(
          Invocation.method(#where, [
            field
          ], {
            #isEqualTo: isEqualTo,
            #isNotEqualTo: isNotEqualTo,
            #isLessThan: isLessThan,
            #isLessThanOrEqualTo: isLessThanOrEqualTo,
            #isGreaterThan: isGreaterThan,
            #isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
            #arrayContains: arrayContains,
            #arrayContainsAny: arrayContainsAny,
            #whereIn: whereIn,
            #whereNotIn: whereNotIn,
            #isNull: isNull
          }),
          returnValue: _FakeQuery_12<T>()) as _i5.Query<T>);
}

/// A class which mocks [Reference].
///
/// See the documentation for Mockito's code generation for more information.
class MockReference extends _i1.Mock implements _i8.Reference {
  MockReference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.FirebaseStorage get storage =>
      (super.noSuchMethod(Invocation.getter(#storage),
          returnValue: _FakeFirebaseStorage_14()) as _i8.FirebaseStorage);
  @override
  String get bucket =>
      (super.noSuchMethod(Invocation.getter(#bucket), returnValue: '')
          as String);
  @override
  String get fullPath =>
      (super.noSuchMethod(Invocation.getter(#fullPath), returnValue: '')
          as String);
  @override
  String get name =>
      (super.noSuchMethod(Invocation.getter(#name), returnValue: '') as String);
  @override
  _i8.Reference get root => (super.noSuchMethod(Invocation.getter(#root),
      returnValue: _FakeReference_15()) as _i8.Reference);
  @override
  _i8.Reference child(String? path) =>
      (super.noSuchMethod(Invocation.method(#child, [path]),
          returnValue: _FakeReference_15()) as _i8.Reference);
  @override
  _i11.Future<void> delete() => (super.noSuchMethod(
      Invocation.method(#delete, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<String> getDownloadURL() =>
      (super.noSuchMethod(Invocation.method(#getDownloadURL, []),
          returnValue: Future<String>.value('')) as _i11.Future<String>);
  @override
  _i11.Future<_i9.FullMetadata> getMetadata() => (super.noSuchMethod(
          Invocation.method(#getMetadata, []),
          returnValue: Future<_i9.FullMetadata>.value(_FakeFullMetadata_16()))
      as _i11.Future<_i9.FullMetadata>);
  @override
  _i11.Future<_i8.ListResult> list([_i9.ListOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#list, [options]),
              returnValue: Future<_i8.ListResult>.value(_FakeListResult_17()))
          as _i11.Future<_i8.ListResult>);
  @override
  _i11.Future<_i8.ListResult> listAll() =>
      (super.noSuchMethod(Invocation.method(#listAll, []),
              returnValue: Future<_i8.ListResult>.value(_FakeListResult_17()))
          as _i11.Future<_i8.ListResult>);
  @override
  _i11.Future<_i17.Uint8List?> getData([int? maxSize = 10485760]) =>
      (super.noSuchMethod(Invocation.method(#getData, [maxSize]),
              returnValue: Future<_i17.Uint8List?>.value())
          as _i11.Future<_i17.Uint8List?>);
  @override
  _i8.UploadTask putData(_i17.Uint8List? data,
          [_i9.SettableMetadata? metadata]) =>
      (super.noSuchMethod(Invocation.method(#putData, [data, metadata]),
          returnValue: _FakeUploadTask_18()) as _i8.UploadTask);
  @override
  _i8.UploadTask putBlob(dynamic blob, [_i9.SettableMetadata? metadata]) =>
      (super.noSuchMethod(Invocation.method(#putBlob, [blob, metadata]),
          returnValue: _FakeUploadTask_18()) as _i8.UploadTask);
  @override
  _i8.UploadTask putFile(_i18.File? file, [_i9.SettableMetadata? metadata]) =>
      (super.noSuchMethod(Invocation.method(#putFile, [file, metadata]),
          returnValue: _FakeUploadTask_18()) as _i8.UploadTask);
  @override
  _i8.UploadTask putString(String? data,
          {_i9.PutStringFormat? format = _i9.PutStringFormat.raw,
          _i9.SettableMetadata? metadata}) =>
      (super.noSuchMethod(
          Invocation.method(
              #putString, [data], {#format: format, #metadata: metadata}),
          returnValue: _FakeUploadTask_18()) as _i8.UploadTask);
  @override
  _i11.Future<_i9.FullMetadata> updateMetadata(
          _i9.SettableMetadata? metadata) =>
      (super.noSuchMethod(Invocation.method(#updateMetadata, [metadata]),
              returnValue:
                  Future<_i9.FullMetadata>.value(_FakeFullMetadata_16()))
          as _i11.Future<_i9.FullMetadata>);
  @override
  _i8.DownloadTask writeToFile(_i18.File? file) =>
      (super.noSuchMethod(Invocation.method(#writeToFile, [file]),
          returnValue: _FakeDownloadTask_19()) as _i8.DownloadTask);
}

/// A class which mocks [FirebaseStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseStorage extends _i1.Mock implements _i8.FirebaseStorage {
  MockFirebaseStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
      returnValue: _FakeFirebaseApp_6()) as _i7.FirebaseApp);
  @override
  set app(_i7.FirebaseApp? _app) =>
      super.noSuchMethod(Invocation.setter(#app, _app),
          returnValueForMissingStub: null);
  @override
  String get bucket =>
      (super.noSuchMethod(Invocation.getter(#bucket), returnValue: '')
          as String);
  @override
  set bucket(String? _bucket) =>
      super.noSuchMethod(Invocation.setter(#bucket, _bucket),
          returnValueForMissingStub: null);
  @override
  Duration get maxOperationRetryTime =>
      (super.noSuchMethod(Invocation.getter(#maxOperationRetryTime),
          returnValue: _FakeDuration_20()) as Duration);
  @override
  Duration get maxUploadRetryTime =>
      (super.noSuchMethod(Invocation.getter(#maxUploadRetryTime),
          returnValue: _FakeDuration_20()) as Duration);
  @override
  Duration get maxDownloadRetryTime =>
      (super.noSuchMethod(Invocation.getter(#maxDownloadRetryTime),
          returnValue: _FakeDuration_20()) as Duration);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
          returnValue: <dynamic, dynamic>{}) as Map<dynamic, dynamic>);
  @override
  _i8.Reference ref([String? path]) =>
      (super.noSuchMethod(Invocation.method(#ref, [path]),
          returnValue: _FakeReference_15()) as _i8.Reference);
  @override
  _i8.Reference refFromURL(String? url) =>
      (super.noSuchMethod(Invocation.method(#refFromURL, [url]),
          returnValue: _FakeReference_15()) as _i8.Reference);
  @override
  void setMaxOperationRetryTime(Duration? time) =>
      super.noSuchMethod(Invocation.method(#setMaxOperationRetryTime, [time]),
          returnValueForMissingStub: null);
  @override
  void setMaxUploadRetryTime(Duration? time) =>
      super.noSuchMethod(Invocation.method(#setMaxUploadRetryTime, [time]),
          returnValueForMissingStub: null);
  @override
  void setMaxDownloadRetryTime(Duration? time) =>
      super.noSuchMethod(Invocation.method(#setMaxDownloadRetryTime, [time]),
          returnValueForMissingStub: null);
  @override
  _i11.Future<void> useEmulator({String? host, int? port}) =>
      (super.noSuchMethod(
              Invocation.method(#useEmulator, [], {#host: host, #port: port}),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i11.Future<void>);
  @override
  _i11.Future<void> useStorageEmulator(String? host, int? port) =>
      (super.noSuchMethod(Invocation.method(#useStorageEmulator, [host, port]),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i11.Future<void>);
}

/// A class which mocks [TaskSnapshot].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskSnapshot extends _i1.Mock implements _i8.TaskSnapshot {
  MockTaskSnapshot() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.FirebaseStorage get storage =>
      (super.noSuchMethod(Invocation.getter(#storage),
          returnValue: _FakeFirebaseStorage_14()) as _i8.FirebaseStorage);
  @override
  int get bytesTransferred =>
      (super.noSuchMethod(Invocation.getter(#bytesTransferred), returnValue: 0)
          as int);
  @override
  _i8.Reference get ref => (super.noSuchMethod(Invocation.getter(#ref),
      returnValue: _FakeReference_15()) as _i8.Reference);
  @override
  _i9.TaskState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _i9.TaskState.paused) as _i9.TaskState);
  @override
  int get totalBytes =>
      (super.noSuchMethod(Invocation.getter(#totalBytes), returnValue: 0)
          as int);
}

/// A class which mocks [UploadTask].
///
/// See the documentation for Mockito's code generation for more information.
class MockUploadTask extends _i1.Mock implements _i8.UploadTask {
  MockUploadTask() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i8.FirebaseStorage get storage =>
      (super.noSuchMethod(Invocation.getter(#storage),
          returnValue: _FakeFirebaseStorage_14()) as _i8.FirebaseStorage);
  @override
  _i11.Stream<_i8.TaskSnapshot> get snapshotEvents =>
      (super.noSuchMethod(Invocation.getter(#snapshotEvents),
              returnValue: Stream<_i8.TaskSnapshot>.empty())
          as _i11.Stream<_i8.TaskSnapshot>);
  @override
  _i8.TaskSnapshot get snapshot =>
      (super.noSuchMethod(Invocation.getter(#snapshot),
          returnValue: _FakeTaskSnapshot_21()) as _i8.TaskSnapshot);
  @override
  _i11.Future<bool> pause() =>
      (super.noSuchMethod(Invocation.method(#pause, []),
          returnValue: Future<bool>.value(false)) as _i11.Future<bool>);
  @override
  _i11.Future<bool> resume() =>
      (super.noSuchMethod(Invocation.method(#resume, []),
          returnValue: Future<bool>.value(false)) as _i11.Future<bool>);
  @override
  _i11.Future<bool> cancel() =>
      (super.noSuchMethod(Invocation.method(#cancel, []),
          returnValue: Future<bool>.value(false)) as _i11.Future<bool>);
  @override
  _i11.Stream<_i8.TaskSnapshot> asStream() =>
      (super.noSuchMethod(Invocation.method(#asStream, []),
              returnValue: Stream<_i8.TaskSnapshot>.empty())
          as _i11.Stream<_i8.TaskSnapshot>);
  @override
  _i11.Future<_i8.TaskSnapshot> catchError(Function? onError,
          {bool Function(Object)? test}) =>
      (super.noSuchMethod(
              Invocation.method(#catchError, [onError], {#test: test}),
              returnValue:
                  Future<_i8.TaskSnapshot>.value(_FakeTaskSnapshot_21()))
          as _i11.Future<_i8.TaskSnapshot>);
  @override
  _i11.Future<S> then<S>(_i11.FutureOr<S>? Function(_i8.TaskSnapshot)? onValue,
          {Function? onError}) =>
      (super.noSuchMethod(
          Invocation.method(#then, [onValue], {#onError: onError}),
          returnValue: Future<S>.value(null)) as _i11.Future<S>);
  @override
  _i11.Future<_i8.TaskSnapshot> whenComplete(
          _i11.FutureOr<dynamic>? Function()? action) =>
      (super.noSuchMethod(Invocation.method(#whenComplete, [action]),
              returnValue:
                  Future<_i8.TaskSnapshot>.value(_FakeTaskSnapshot_21()))
          as _i11.Future<_i8.TaskSnapshot>);
  @override
  _i11.Future<_i8.TaskSnapshot> timeout(Duration? timeLimit,
          {_i11.FutureOr<_i8.TaskSnapshot> Function()? onTimeout}) =>
      (super.noSuchMethod(
              Invocation.method(#timeout, [timeLimit], {#onTimeout: onTimeout}),
              returnValue:
                  Future<_i8.TaskSnapshot>.value(_FakeTaskSnapshot_21()))
          as _i11.Future<_i8.TaskSnapshot>);
}

/// A class which mocks [DocumentReference].
///
/// See the documentation for Mockito's code generation for more information.
// ignore: must_be_immutable
class MockDocumentReference<T extends Object?> extends _i1.Mock
    implements _i5.DocumentReference<T> {
  MockDocumentReference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i5.FirebaseFirestore get firestore =>
      (super.noSuchMethod(Invocation.getter(#firestore),
          returnValue: _FakeFirebaseFirestore_13()) as _i5.FirebaseFirestore);
  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  _i5.CollectionReference<T> get parent =>
      (super.noSuchMethod(Invocation.getter(#parent),
              returnValue: _FakeCollectionReference_8<T>())
          as _i5.CollectionReference<T>);
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  _i5.CollectionReference<Map<String, dynamic>> collection(
          String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collection, [collectionPath]),
              returnValue: _FakeCollectionReference_8<Map<String, dynamic>>())
          as _i5.CollectionReference<Map<String, dynamic>>);
  @override
  _i11.Future<void> delete() => (super.noSuchMethod(
      Invocation.method(#delete, []),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<void> update(Map<String, Object?>? data) => (super.noSuchMethod(
      Invocation.method(#update, [data]),
      returnValue: Future<void>.value(),
      returnValueForMissingStub: Future<void>.value()) as _i11.Future<void>);
  @override
  _i11.Future<_i5.DocumentSnapshot<T>> get([_i5.GetOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#get, [options]),
              returnValue: Future<_i5.DocumentSnapshot<T>>.value(
                  _FakeDocumentSnapshot_22<T>()))
          as _i11.Future<_i5.DocumentSnapshot<T>>);
  @override
  _i11.Stream<_i5.DocumentSnapshot<T>> snapshots(
          {bool? includeMetadataChanges = false}) =>
      (super.noSuchMethod(
              Invocation.method(#snapshots, [],
                  {#includeMetadataChanges: includeMetadataChanges}),
              returnValue: Stream<_i5.DocumentSnapshot<T>>.empty())
          as _i11.Stream<_i5.DocumentSnapshot<T>>);
  @override
  _i11.Future<void> set(T? data, [_i5.SetOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#set, [data, options]),
              returnValue: Future<void>.value(),
              returnValueForMissingStub: Future<void>.value())
          as _i11.Future<void>);
  @override
  _i5.DocumentReference<R> withConverter<R>(
          {_i5.FromFirestore<R>? fromFirestore,
          _i5.ToFirestore<R>? toFirestore}) =>
      (super.noSuchMethod(
              Invocation.method(#withConverter, [],
                  {#fromFirestore: fromFirestore, #toFirestore: toFirestore}),
              returnValue: _FakeDocumentReference_3<R>())
          as _i5.DocumentReference<R>);
}

/// A class which mocks [DocumentSnapshot].
///
/// See the documentation for Mockito's code generation for more information.
class MockDocumentSnapshot<T extends Object?> extends _i1.Mock
    implements _i5.DocumentSnapshot<T> {
  MockDocumentSnapshot() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  _i5.DocumentReference<T> get reference => (super.noSuchMethod(
      Invocation.getter(#reference),
      returnValue: _FakeDocumentReference_3<T>()) as _i5.DocumentReference<T>);
  @override
  _i5.SnapshotMetadata get metadata =>
      (super.noSuchMethod(Invocation.getter(#metadata),
          returnValue: _FakeSnapshotMetadata_23()) as _i5.SnapshotMetadata);
  @override
  bool get exists =>
      (super.noSuchMethod(Invocation.getter(#exists), returnValue: false)
          as bool);
  @override
  dynamic get(Object? field) =>
      super.noSuchMethod(Invocation.method(#get, [field]));
  @override
  dynamic operator [](Object? field) =>
      super.noSuchMethod(Invocation.method(#[], [field]));
}
