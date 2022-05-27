library shopify_domain;

import 'package:get_it/get_it.dart';
import 'package:shopify_domain/src/injection.dart';

export 'core/images/photo_picker.dart';
export 'core/images/image_failure.dart';
export 'core/images/photo.dart';
export 'core/images/validators.dart';
export 'core/location/shopify_location_facade.dart';
export 'core/location/location.dart';
export 'core/location/location_failure.dart';
export 'core/location/location_info.dart';
export 'core/address.dart';
export 'core/enum_stringify_extension.dart';
export 'core/errors.dart';
export 'core/failures.dart';
export 'core/value_failures.dart';
export 'core/value_objects.dart';
export 'core/value_transformers.dart';

abstract class ShopifyDomain {
  static GetIt get initialize => configureInjection('prod');
}
