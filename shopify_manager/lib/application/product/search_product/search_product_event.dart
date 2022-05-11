part of 'search_product_bloc.dart';

@superEnum
enum $SearchProductEvent {
  @Data(fields: [DataField<String>('barcode')])
  SearchForProduct
}
