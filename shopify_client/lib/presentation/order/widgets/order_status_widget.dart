import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:shopify_domain/order/order.dart';

class OrderStatusWidget extends StatelessWidget {
  final Function(OrderStatusEnum status) onStatusChanged;
  final OrderStatusEnum? defaultValue;
  const OrderStatusWidget(
      {Key? key, required this.onStatusChanged, this.defaultValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomRadioButton<OrderStatusEnum>(
      autoWidth: true,
      radius: 8,
      enableShape: true,
      shapeRadius: 8,
      defaultSelected: defaultValue ?? OrderStatusEnum.values.first,
      buttonLables: OrderStatusEnum.values.map((value) => value.name).toList(),
      buttonValues: OrderStatusEnum.values,
      radioButtonValue: onStatusChanged,
      selectedColor: Theme.of(context).primaryColor,
      unSelectedColor: Theme.of(context).canvasColor,
    );
  }
}
