import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';
import 'package:sealed_annotations/sealed_annotations.dart';
import 'package:shopify_client/domain/shop/i_shop_repository.dart';
import 'package:shopify_domain/product.dart';
import 'package:shopify_domain/shop.dart';

part 'product_watcher_event.dart';
part 'product_watcher_state.dart';
part 'product_watcher_bloc.sealed.dart';

@Injectable()
class ProductWatcherBloc
    extends Bloc<ProductWatcherEvent, ProductWatcherState> {
  final Shop shop;
  final IShopRepository repository;
  ProductWatcherBloc({required this.shop, required this.repository})
      : super(ProductWatcherState.initial(shop: shop)) {
    on<ProductWatcherEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
