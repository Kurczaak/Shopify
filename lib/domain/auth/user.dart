import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_client/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class ShopifyUser with _$ShopifyUser {
  const factory ShopifyUser({
    required UniqueId id,
  }) = _ShopifyUser;
}
