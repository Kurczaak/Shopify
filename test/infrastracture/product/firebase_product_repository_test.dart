import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_manager/infrastructure/product/firebase_product_repository.dart';

import './firebase_product_repository_test.mocks.dart';

@GenerateMocks([FirebaseFirestore, FirebaseStorage])
void main() {
  late FirebaseProductRepositoryImpl repository;
  late MockFirebaseFirestore mockFirestore;
  late MockFirebaseStorage mockStorage;

  setUp(() {
    mockFirestore = MockFirebaseFirestore();
    mockStorage = MockFirebaseStorage();
    repository = FirebaseProductRepositoryImpl(mockFirestore, mockStorage);
  });
  group('create', () {});
}
