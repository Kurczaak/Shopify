import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';
import 'package:shopify_manager/infrastructure/shopping/shop_dtos.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'fixture_reader.dart';
import 'dart:convert';

//TODO IMPLEMENT!!!
void main() {
  final Map<String, dynamic> jsonMap = json.decode(fixture('shop.json'));
  final tShopDto = ShopDto.fromJson(jsonMap);
  print(tShopDto);
  test(
    'should be a subclass of Shop entity',
    () async {
      // arrange

      // act

      // assert
      //expect(tshopDto)
    },
  );
}
