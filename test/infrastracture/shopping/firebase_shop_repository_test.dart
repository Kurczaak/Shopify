import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:shopify_client/domain/auth/i_auth_facade.dart';
import 'package:shopify_client/domain/core/address.dart';
import 'package:shopify_client/domain/core/images/photo.dart';
import 'package:shopify_client/domain/core/location.dart';
import 'package:shopify_client/domain/core/value_objects.dart';
import 'package:shopify_client/domain/shopping/shop.dart';
import 'package:shopify_client/domain/shopping/shop_failure.dart';
import 'package:shopify_client/domain/shopping/time/week.dart';
import 'package:shopify_client/domain/shopping/value_objects.dart';
import 'package:shopify_client/infrastructure/core/config.dart';
import 'package:shopify_client/infrastructure/shopping/firebase_shop_repository.dart';
import 'package:shopify_client/infrastructure/shopping/shop_dtos.dart';
// import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
// import 'package:firebase_storage_mocks/firebase_storage_mocks.dart' as fake;
import 'package:firebase_storage/firebase_storage.dart';

import '../../utils/image_reader.dart';
