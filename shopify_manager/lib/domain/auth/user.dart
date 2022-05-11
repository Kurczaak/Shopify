import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shopify_manager/domain/core/value_objects.dart';

part 'user.freezed.dart';

@freezed
class ShopifyUser with _$ShopifyUser {
  const ShopifyUser._();
  const factory ShopifyUser({
    required UniqueId id,
  }) = _ShopifyUser;

  Map<String, dynamic> toJson() => {'id': id.getOrCrash()};
}
