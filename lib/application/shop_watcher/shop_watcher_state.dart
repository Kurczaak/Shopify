part of 'shop_watcher_bloc.dart';

@superEnum
enum _ShopWatcherState {
  @object
  Initial,
  @object
  Loading,
  @Data(fields: [
    DataField<KtList<Shop>>('shops'),
    DataField<Location>('center'),
    DataField<double>('radius'),
  ])
  Loaded,
  @Data(fields: [
    DataField<ShopFailure>('failure'),
  ])
  Error,
}
