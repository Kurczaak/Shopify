library shopify_presentation;

import 'package:get_it/get_it.dart';
import 'package:shopify_presentation/src/injection.dart';

export 'core/google_sign_in_button.dart';
export 'core/green_corner_background.dart';
export 'core/photos_carousel_slider.dart';
export 'core/shopify_alert_dialog.dart';
export 'core/shopify_appbar.dart';
export 'core/shopify_buttons.dart';
export 'core/shopify_dropdown_menu_button.dart';
export 'core/shopify_progress_indicator.dart';
export 'core/shopify_text_form_field.dart';
export 'core/splash_widget.dart';
export 'core/network_image_carousel_slider.dart';
export 'product/widgets/expandable_description.dart';
export 'product/widgets/expandable_nutrition_facts.dart';
export 'shop/shop_recap_column.dart';
export 'shop/shops_logos_scrollable_list.dart';
export 'shop/shops_map_widget.dart';
export 'shop/shop_preview_dialog.dart';

abstract class ShopifyPresentation {
  static GetIt get initialize => configureInjection('prod');
}
