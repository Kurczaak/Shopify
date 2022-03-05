// Mocks generated by Mockito 5.1.0 from annotations
// in shopify_manager/test/infrastracture/shopping/firebase_shop_repository_test.dart.
// Do not manually edit this file.

import 'dart:async' as _i9;
import 'dart:io' as _i14;
import 'dart:typed_data' as _i13;

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:cloud_firestore_platform_interface/cloud_firestore_platform_interface.dart'
    as _i4;
import 'package:dartz/dartz.dart' as _i2;
import 'package:firebase_core/firebase_core.dart' as _i3;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:firebase_storage_platform_interface/firebase_storage_platform_interface.dart'
    as _i7;
import 'package:mockito/mockito.dart' as _i1;
import 'package:shopify_manager/domain/auth/auth_failure.dart' as _i11;
import 'package:shopify_manager/domain/auth/i_auth_facade.dart' as _i8;
import 'package:shopify_manager/domain/auth/user.dart' as _i10;
import 'package:shopify_manager/domain/auth/value_objects.dart' as _i12;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types

class _FakeOption_0<A> extends _i1.Fake implements _i2.Option<A> {}

class _FakeEither_1<L, R> extends _i1.Fake implements _i2.Either<L, R> {}

class _FakeFirebaseApp_2 extends _i1.Fake implements _i3.FirebaseApp {}

class _FakeSettings_3 extends _i1.Fake implements _i4.Settings {}

class _FakeCollectionReference_4<T extends Object?> extends _i1.Fake
    implements _i5.CollectionReference<T> {}

class _FakeWriteBatch_5 extends _i1.Fake implements _i5.WriteBatch {}

class _FakeLoadBundleTask_6 extends _i1.Fake implements _i5.LoadBundleTask {}

class _FakeQuerySnapshot_7<T extends Object?> extends _i1.Fake
    implements _i5.QuerySnapshot<T> {}

class _FakeQuery_8<T extends Object?> extends _i1.Fake implements _i5.Query<T> {
}

class _FakeDocumentReference_9<T extends Object?> extends _i1.Fake
    implements _i5.DocumentReference<T> {}

class _FakeFirebaseFirestore_10 extends _i1.Fake
    implements _i5.FirebaseFirestore {}

class _FakeFirebaseStorage_11 extends _i1.Fake implements _i6.FirebaseStorage {}

class _FakeReference_12 extends _i1.Fake implements _i6.Reference {}

class _FakeFullMetadata_13 extends _i1.Fake implements _i7.FullMetadata {}

class _FakeListResult_14 extends _i1.Fake implements _i6.ListResult {}

class _FakeUploadTask_15 extends _i1.Fake implements _i6.UploadTask {}

class _FakeDownloadTask_16 extends _i1.Fake implements _i6.DownloadTask {}

class _FakeDuration_17 extends _i1.Fake implements Duration {}

class _FakeTaskSnapshot_18 extends _i1.Fake implements _i6.TaskSnapshot {}

class _FakeDocumentSnapshot_19<T extends Object?> extends _i1.Fake
    implements _i5.DocumentSnapshot<T> {}

/// A class which mocks [IAuthFacade].
///
/// See the documentation for Mockito's code generation for more information.
class MockIAuthFacade extends _i1.Mock implements _i8.IAuthFacade {
  MockIAuthFacade() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i9.Future<_i2.Option<_i10.ShopifyUser>> getSignedInUser() =>
      (super.noSuchMethod(Invocation.method(#getSignedInUser, []),
              returnValue: Future<_i2.Option<_i10.ShopifyUser>>.value(
                  _FakeOption_0<_i10.ShopifyUser>()))
          as _i9.Future<_i2.Option<_i10.ShopifyUser>>);
  @override
  _i9.Future<_i2.Either<_i11.AuthFailure, _i2.Unit>>
      registerWithEmailAndPassword(
              {_i12.EmailAddress? emailAddress, _i12.Password? password}) =>
          (super.noSuchMethod(
              Invocation.method(#registerWithEmailAndPassword, [],
                  {#emailAddress: emailAddress, #password: password}),
              returnValue: Future<_i2.Either<_i11.AuthFailure, _i2.Unit>>.value(
                  _FakeEither_1<_i11.AuthFailure, _i2.Unit>())) as _i9
              .Future<_i2.Either<_i11.AuthFailure, _i2.Unit>>);
  @override
  _i9.Future<_i2.Either<_i11.AuthFailure, _i2.Unit>> signInWithEmailAndPassword(
          {_i12.EmailAddress? emailAddress, _i12.Password? password}) =>
      (super.noSuchMethod(
              Invocation.method(#signInWithEmailAndPassword, [],
                  {#emailAddress: emailAddress, #password: password}),
              returnValue: Future<_i2.Either<_i11.AuthFailure, _i2.Unit>>.value(
                  _FakeEither_1<_i11.AuthFailure, _i2.Unit>()))
          as _i9.Future<_i2.Either<_i11.AuthFailure, _i2.Unit>>);
  @override
  _i9.Future<_i2.Either<_i11.AuthFailure, _i2.Unit>> signInWithGoogle() =>
      (super.noSuchMethod(Invocation.method(#signInWithGoogle, []),
              returnValue: Future<_i2.Either<_i11.AuthFailure, _i2.Unit>>.value(
                  _FakeEither_1<_i11.AuthFailure, _i2.Unit>()))
          as _i9.Future<_i2.Either<_i11.AuthFailure, _i2.Unit>>);
  @override
  _i9.Future<void> signOut() =>
      (super.noSuchMethod(Invocation.method(#signOut, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
}

/// A class which mocks [FirebaseFirestore].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseFirestore extends _i1.Mock implements _i5.FirebaseFirestore {
  MockFirebaseFirestore() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
      returnValue: _FakeFirebaseApp_2()) as _i3.FirebaseApp);
  @override
  set app(_i3.FirebaseApp? _app) =>
      super.noSuchMethod(Invocation.setter(#app, _app),
          returnValueForMissingStub: null);
  @override
  set settings(_i4.Settings? settings) =>
      super.noSuchMethod(Invocation.setter(#settings, settings),
          returnValueForMissingStub: null);
  @override
  _i4.Settings get settings => (super.noSuchMethod(Invocation.getter(#settings),
      returnValue: _FakeSettings_3()) as _i4.Settings);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
          returnValue: <dynamic, dynamic>{}) as Map<dynamic, dynamic>);
  @override
  _i5.CollectionReference<Map<String, dynamic>> collection(
          String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collection, [collectionPath]),
              returnValue: _FakeCollectionReference_4<Map<String, dynamic>>())
          as _i5.CollectionReference<Map<String, dynamic>>);
  @override
  _i5.WriteBatch batch() => (super.noSuchMethod(Invocation.method(#batch, []),
      returnValue: _FakeWriteBatch_5()) as _i5.WriteBatch);
  @override
  _i9.Future<void> clearPersistence() =>
      (super.noSuchMethod(Invocation.method(#clearPersistence, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> enablePersistence(
          [_i4.PersistenceSettings? persistenceSettings]) =>
      (super.noSuchMethod(
          Invocation.method(#enablePersistence, [persistenceSettings]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i5.LoadBundleTask loadBundle(_i13.Uint8List? bundle) =>
      (super.noSuchMethod(Invocation.method(#loadBundle, [bundle]),
          returnValue: _FakeLoadBundleTask_6()) as _i5.LoadBundleTask);
  @override
  void useFirestoreEmulator(String? host, int? port,
          {bool? sslEnabled = false}) =>
      super.noSuchMethod(
          Invocation.method(
              #useFirestoreEmulator, [host, port], {#sslEnabled: sslEnabled}),
          returnValueForMissingStub: null);
  @override
  _i9.Future<_i5.QuerySnapshot<Map<String, dynamic>>> namedQueryGet(
          String? name,
          {_i4.GetOptions? options = const _i4.GetOptions()}) =>
      (super.noSuchMethod(
          Invocation.method(#namedQueryGet, [name], {#options: options}),
          returnValue: Future<_i5.QuerySnapshot<Map<String, dynamic>>>.value(
              _FakeQuerySnapshot_7<Map<String, dynamic>>())) as _i9
          .Future<_i5.QuerySnapshot<Map<String, dynamic>>>);
  @override
  _i5.Query<Map<String, dynamic>> collectionGroup(String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collectionGroup, [collectionPath]),
              returnValue: _FakeQuery_8<Map<String, dynamic>>())
          as _i5.Query<Map<String, dynamic>>);
  @override
  _i9.Future<void> disableNetwork() =>
      (super.noSuchMethod(Invocation.method(#disableNetwork, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i5.DocumentReference<Map<String, dynamic>> doc(String? documentPath) =>
      (super.noSuchMethod(Invocation.method(#doc, [documentPath]),
              returnValue: _FakeDocumentReference_9<Map<String, dynamic>>())
          as _i5.DocumentReference<Map<String, dynamic>>);
  @override
  _i9.Future<void> enableNetwork() =>
      (super.noSuchMethod(Invocation.method(#enableNetwork, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Stream<void> snapshotsInSync() =>
      (super.noSuchMethod(Invocation.method(#snapshotsInSync, []),
          returnValue: Stream<void>.empty()) as _i9.Stream<void>);
  @override
  _i9.Future<T> runTransaction<T>(_i5.TransactionHandler<T>? transactionHandler,
          {Duration? timeout = const Duration(seconds: 30)}) =>
      (super.noSuchMethod(
          Invocation.method(
              #runTransaction, [transactionHandler], {#timeout: timeout}),
          returnValue: Future<T>.value(null)) as _i9.Future<T>);
  @override
  _i9.Future<void> terminate() =>
      (super.noSuchMethod(Invocation.method(#terminate, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> waitForPendingWrites() =>
      (super.noSuchMethod(Invocation.method(#waitForPendingWrites, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
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
          returnValue: _FakeFirebaseFirestore_10()) as _i5.FirebaseFirestore);
  @override
  Map<String, dynamic> get parameters =>
      (super.noSuchMethod(Invocation.getter(#parameters),
          returnValue: <String, dynamic>{}) as Map<String, dynamic>);
  @override
  _i9.Future<_i5.DocumentReference<T>> add(T? data) =>
      (super.noSuchMethod(Invocation.method(#add, [data]),
              returnValue: Future<_i5.DocumentReference<T>>.value(
                  _FakeDocumentReference_9<T>()))
          as _i9.Future<_i5.DocumentReference<T>>);
  @override
  _i5.DocumentReference<T> doc([String? path]) => (super.noSuchMethod(
      Invocation.method(#doc, [path]),
      returnValue: _FakeDocumentReference_9<T>()) as _i5.DocumentReference<T>);
  @override
  _i5.CollectionReference<R> withConverter<R extends Object?>(
          {_i5.FromFirestore<R>? fromFirestore,
          _i5.ToFirestore<R>? toFirestore}) =>
      (super.noSuchMethod(
              Invocation.method(#withConverter, [],
                  {#fromFirestore: fromFirestore, #toFirestore: toFirestore}),
              returnValue: _FakeCollectionReference_4<R>())
          as _i5.CollectionReference<R>);
  @override
  _i5.Query<T> endAtDocument(_i5.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(Invocation.method(#endAtDocument, [documentSnapshot]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> endAt(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#endAt, [values]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> endBeforeDocument(
          _i5.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(
          Invocation.method(#endBeforeDocument, [documentSnapshot]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> endBefore(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#endBefore, [values]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i9.Future<_i5.QuerySnapshot<T>> get([_i4.GetOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#get, [options]),
              returnValue:
                  Future<_i5.QuerySnapshot<T>>.value(_FakeQuerySnapshot_7<T>()))
          as _i9.Future<_i5.QuerySnapshot<T>>);
  @override
  _i5.Query<T> limit(int? limit) =>
      (super.noSuchMethod(Invocation.method(#limit, [limit]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> limitToLast(int? limit) =>
      (super.noSuchMethod(Invocation.method(#limitToLast, [limit]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i9.Stream<_i5.QuerySnapshot<T>> snapshots(
          {bool? includeMetadataChanges = false}) =>
      (super.noSuchMethod(
              Invocation.method(#snapshots, [],
                  {#includeMetadataChanges: includeMetadataChanges}),
              returnValue: Stream<_i5.QuerySnapshot<T>>.empty())
          as _i9.Stream<_i5.QuerySnapshot<T>>);
  @override
  _i5.Query<T> orderBy(Object? field, {bool? descending = false}) =>
      (super.noSuchMethod(
          Invocation.method(#orderBy, [field], {#descending: descending}),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> startAfterDocument(
          _i5.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(
          Invocation.method(#startAfterDocument, [documentSnapshot]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> startAfter(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#startAfter, [values]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> startAtDocument(
          _i5.DocumentSnapshot<Object?>? documentSnapshot) =>
      (super.noSuchMethod(
          Invocation.method(#startAtDocument, [documentSnapshot]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
  @override
  _i5.Query<T> startAt(List<Object?>? values) =>
      (super.noSuchMethod(Invocation.method(#startAt, [values]),
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
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
          returnValue: _FakeQuery_8<T>()) as _i5.Query<T>);
}

/// A class which mocks [Reference].
///
/// See the documentation for Mockito's code generation for more information.
class MockReference extends _i1.Mock implements _i6.Reference {
  MockReference() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.FirebaseStorage get storage =>
      (super.noSuchMethod(Invocation.getter(#storage),
          returnValue: _FakeFirebaseStorage_11()) as _i6.FirebaseStorage);
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
  _i6.Reference get root => (super.noSuchMethod(Invocation.getter(#root),
      returnValue: _FakeReference_12()) as _i6.Reference);
  @override
  _i6.Reference child(String? path) =>
      (super.noSuchMethod(Invocation.method(#child, [path]),
          returnValue: _FakeReference_12()) as _i6.Reference);
  @override
  _i9.Future<void> delete() =>
      (super.noSuchMethod(Invocation.method(#delete, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<String> getDownloadURL() =>
      (super.noSuchMethod(Invocation.method(#getDownloadURL, []),
          returnValue: Future<String>.value('')) as _i9.Future<String>);
  @override
  _i9.Future<_i7.FullMetadata> getMetadata() => (super.noSuchMethod(
          Invocation.method(#getMetadata, []),
          returnValue: Future<_i7.FullMetadata>.value(_FakeFullMetadata_13()))
      as _i9.Future<_i7.FullMetadata>);
  @override
  _i9.Future<_i6.ListResult> list([_i7.ListOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#list, [options]),
              returnValue: Future<_i6.ListResult>.value(_FakeListResult_14()))
          as _i9.Future<_i6.ListResult>);
  @override
  _i9.Future<_i6.ListResult> listAll() =>
      (super.noSuchMethod(Invocation.method(#listAll, []),
              returnValue: Future<_i6.ListResult>.value(_FakeListResult_14()))
          as _i9.Future<_i6.ListResult>);
  @override
  _i9.Future<_i13.Uint8List?> getData([int? maxSize = 10485760]) =>
      (super.noSuchMethod(Invocation.method(#getData, [maxSize]),
              returnValue: Future<_i13.Uint8List?>.value())
          as _i9.Future<_i13.Uint8List?>);
  @override
  _i6.UploadTask putData(_i13.Uint8List? data,
          [_i7.SettableMetadata? metadata]) =>
      (super.noSuchMethod(Invocation.method(#putData, [data, metadata]),
          returnValue: _FakeUploadTask_15()) as _i6.UploadTask);
  @override
  _i6.UploadTask putBlob(dynamic blob, [_i7.SettableMetadata? metadata]) =>
      (super.noSuchMethod(Invocation.method(#putBlob, [blob, metadata]),
          returnValue: _FakeUploadTask_15()) as _i6.UploadTask);
  @override
  _i6.UploadTask putFile(_i14.File? file, [_i7.SettableMetadata? metadata]) =>
      (super.noSuchMethod(Invocation.method(#putFile, [file, metadata]),
          returnValue: _FakeUploadTask_15()) as _i6.UploadTask);
  @override
  _i6.UploadTask putString(String? data,
          {_i7.PutStringFormat? format = _i7.PutStringFormat.raw,
          _i7.SettableMetadata? metadata}) =>
      (super.noSuchMethod(
          Invocation.method(
              #putString, [data], {#format: format, #metadata: metadata}),
          returnValue: _FakeUploadTask_15()) as _i6.UploadTask);
  @override
  _i9.Future<_i7.FullMetadata> updateMetadata(_i7.SettableMetadata? metadata) =>
      (super.noSuchMethod(Invocation.method(#updateMetadata, [metadata]),
              returnValue:
                  Future<_i7.FullMetadata>.value(_FakeFullMetadata_13()))
          as _i9.Future<_i7.FullMetadata>);
  @override
  _i6.DownloadTask writeToFile(_i14.File? file) =>
      (super.noSuchMethod(Invocation.method(#writeToFile, [file]),
          returnValue: _FakeDownloadTask_16()) as _i6.DownloadTask);
}

/// A class which mocks [FirebaseStorage].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirebaseStorage extends _i1.Mock implements _i6.FirebaseStorage {
  MockFirebaseStorage() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.FirebaseApp get app => (super.noSuchMethod(Invocation.getter(#app),
      returnValue: _FakeFirebaseApp_2()) as _i3.FirebaseApp);
  @override
  set app(_i3.FirebaseApp? _app) =>
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
          returnValue: _FakeDuration_17()) as Duration);
  @override
  Duration get maxUploadRetryTime =>
      (super.noSuchMethod(Invocation.getter(#maxUploadRetryTime),
          returnValue: _FakeDuration_17()) as Duration);
  @override
  Duration get maxDownloadRetryTime =>
      (super.noSuchMethod(Invocation.getter(#maxDownloadRetryTime),
          returnValue: _FakeDuration_17()) as Duration);
  @override
  Map<dynamic, dynamic> get pluginConstants =>
      (super.noSuchMethod(Invocation.getter(#pluginConstants),
          returnValue: <dynamic, dynamic>{}) as Map<dynamic, dynamic>);
  @override
  _i6.Reference ref([String? path]) =>
      (super.noSuchMethod(Invocation.method(#ref, [path]),
          returnValue: _FakeReference_12()) as _i6.Reference);
  @override
  _i6.Reference refFromURL(String? url) =>
      (super.noSuchMethod(Invocation.method(#refFromURL, [url]),
          returnValue: _FakeReference_12()) as _i6.Reference);
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
  _i9.Future<void> useEmulator({String? host, int? port}) =>
      (super.noSuchMethod(
          Invocation.method(#useEmulator, [], {#host: host, #port: port}),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> useStorageEmulator(String? host, int? port) =>
      (super.noSuchMethod(Invocation.method(#useStorageEmulator, [host, port]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
}

/// A class which mocks [TaskSnapshot].
///
/// See the documentation for Mockito's code generation for more information.
class MockTaskSnapshot extends _i1.Mock implements _i6.TaskSnapshot {
  MockTaskSnapshot() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.FirebaseStorage get storage =>
      (super.noSuchMethod(Invocation.getter(#storage),
          returnValue: _FakeFirebaseStorage_11()) as _i6.FirebaseStorage);
  @override
  int get bytesTransferred =>
      (super.noSuchMethod(Invocation.getter(#bytesTransferred), returnValue: 0)
          as int);
  @override
  _i6.Reference get ref => (super.noSuchMethod(Invocation.getter(#ref),
      returnValue: _FakeReference_12()) as _i6.Reference);
  @override
  _i7.TaskState get state => (super.noSuchMethod(Invocation.getter(#state),
      returnValue: _i7.TaskState.paused) as _i7.TaskState);
  @override
  int get totalBytes =>
      (super.noSuchMethod(Invocation.getter(#totalBytes), returnValue: 0)
          as int);
}

/// A class which mocks [UploadTask].
///
/// See the documentation for Mockito's code generation for more information.
class MockUploadTask extends _i1.Mock implements _i6.UploadTask {
  MockUploadTask() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.FirebaseStorage get storage =>
      (super.noSuchMethod(Invocation.getter(#storage),
          returnValue: _FakeFirebaseStorage_11()) as _i6.FirebaseStorage);
  @override
  _i9.Stream<_i6.TaskSnapshot> get snapshotEvents =>
      (super.noSuchMethod(Invocation.getter(#snapshotEvents),
              returnValue: Stream<_i6.TaskSnapshot>.empty())
          as _i9.Stream<_i6.TaskSnapshot>);
  @override
  _i6.TaskSnapshot get snapshot =>
      (super.noSuchMethod(Invocation.getter(#snapshot),
          returnValue: _FakeTaskSnapshot_18()) as _i6.TaskSnapshot);
  @override
  _i9.Future<bool> pause() => (super.noSuchMethod(Invocation.method(#pause, []),
      returnValue: Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i9.Future<bool> resume() =>
      (super.noSuchMethod(Invocation.method(#resume, []),
          returnValue: Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i9.Future<bool> cancel() =>
      (super.noSuchMethod(Invocation.method(#cancel, []),
          returnValue: Future<bool>.value(false)) as _i9.Future<bool>);
  @override
  _i9.Stream<_i6.TaskSnapshot> asStream() =>
      (super.noSuchMethod(Invocation.method(#asStream, []),
              returnValue: Stream<_i6.TaskSnapshot>.empty())
          as _i9.Stream<_i6.TaskSnapshot>);
  @override
  _i9.Future<_i6.TaskSnapshot> catchError(Function? onError,
          {bool Function(Object)? test}) =>
      (super.noSuchMethod(
              Invocation.method(#catchError, [onError], {#test: test}),
              returnValue:
                  Future<_i6.TaskSnapshot>.value(_FakeTaskSnapshot_18()))
          as _i9.Future<_i6.TaskSnapshot>);
  @override
  _i9.Future<S> then<S>(_i9.FutureOr<S>? Function(_i6.TaskSnapshot)? onValue,
          {Function? onError}) =>
      (super.noSuchMethod(
          Invocation.method(#then, [onValue], {#onError: onError}),
          returnValue: Future<S>.value(null)) as _i9.Future<S>);
  @override
  _i9.Future<_i6.TaskSnapshot> whenComplete(
          _i9.FutureOr<dynamic>? Function()? action) =>
      (super.noSuchMethod(Invocation.method(#whenComplete, [action]),
              returnValue:
                  Future<_i6.TaskSnapshot>.value(_FakeTaskSnapshot_18()))
          as _i9.Future<_i6.TaskSnapshot>);
  @override
  _i9.Future<_i6.TaskSnapshot> timeout(Duration? timeLimit,
          {_i9.FutureOr<_i6.TaskSnapshot> Function()? onTimeout}) =>
      (super.noSuchMethod(
              Invocation.method(#timeout, [timeLimit], {#onTimeout: onTimeout}),
              returnValue:
                  Future<_i6.TaskSnapshot>.value(_FakeTaskSnapshot_18()))
          as _i9.Future<_i6.TaskSnapshot>);
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
          returnValue: _FakeFirebaseFirestore_10()) as _i5.FirebaseFirestore);
  @override
  String get id =>
      (super.noSuchMethod(Invocation.getter(#id), returnValue: '') as String);
  @override
  _i5.CollectionReference<T> get parent =>
      (super.noSuchMethod(Invocation.getter(#parent),
              returnValue: _FakeCollectionReference_4<T>())
          as _i5.CollectionReference<T>);
  @override
  String get path =>
      (super.noSuchMethod(Invocation.getter(#path), returnValue: '') as String);
  @override
  _i5.CollectionReference<Map<String, dynamic>> collection(
          String? collectionPath) =>
      (super.noSuchMethod(Invocation.method(#collection, [collectionPath]),
              returnValue: _FakeCollectionReference_4<Map<String, dynamic>>())
          as _i5.CollectionReference<Map<String, dynamic>>);
  @override
  _i9.Future<void> delete() =>
      (super.noSuchMethod(Invocation.method(#delete, []),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<void> update(Map<String, Object?>? data) =>
      (super.noSuchMethod(Invocation.method(#update, [data]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i9.Future<_i5.DocumentSnapshot<T>> get([_i4.GetOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#get, [options]),
              returnValue: Future<_i5.DocumentSnapshot<T>>.value(
                  _FakeDocumentSnapshot_19<T>()))
          as _i9.Future<_i5.DocumentSnapshot<T>>);
  @override
  _i9.Stream<_i5.DocumentSnapshot<T>> snapshots(
          {bool? includeMetadataChanges = false}) =>
      (super.noSuchMethod(
              Invocation.method(#snapshots, [],
                  {#includeMetadataChanges: includeMetadataChanges}),
              returnValue: Stream<_i5.DocumentSnapshot<T>>.empty())
          as _i9.Stream<_i5.DocumentSnapshot<T>>);
  @override
  _i9.Future<void> set(T? data, [_i4.SetOptions? options]) =>
      (super.noSuchMethod(Invocation.method(#set, [data, options]),
          returnValue: Future<void>.value(),
          returnValueForMissingStub: Future<void>.value()) as _i9.Future<void>);
  @override
  _i5.DocumentReference<R> withConverter<R>(
          {_i5.FromFirestore<R>? fromFirestore,
          _i5.ToFirestore<R>? toFirestore}) =>
      (super.noSuchMethod(
              Invocation.method(#withConverter, [],
                  {#fromFirestore: fromFirestore, #toFirestore: toFirestore}),
              returnValue: _FakeDocumentReference_9<R>())
          as _i5.DocumentReference<R>);
}
