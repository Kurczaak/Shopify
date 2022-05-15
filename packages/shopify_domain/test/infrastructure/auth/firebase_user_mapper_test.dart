import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopify_domain/auth/user.dart';
import 'package:shopify_domain/core/value_objects.dart';
import 'package:shopify_domain/src/auth/firebase_user_mapper.dart';

const uniqueId = 'thisIsAUniqueId123';

class MockUser extends Mock implements User {
  @override
  String get uid => uniqueId;
}

void main() async {
  final firebaseUser = MockUser();
  final shopifyUser = ShopifyUser(id: UniqueId.fromUniqueString(uniqueId));
  test(
    'should map a Firebase User to a ShopifyUser entity',
    () async {
      // arran ge

      // act
      final result = firebaseUser.toDomain();
      // assert
      expect(result, shopifyUser);
    },
  );
}
