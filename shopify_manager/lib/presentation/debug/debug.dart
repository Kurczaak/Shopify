import 'package:flutter/material.dart';
import 'package:shopify_presentation/shopify_presentation.dart';

class DebugPage extends StatefulWidget {
  const DebugPage({Key? key}) : super(key: key);

  @override
  State<DebugPage> createState() => _DebugPageState();
}

class _DebugPageState extends State<DebugPage> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ShopifyAlertDialog(
          title: 'Do you want to leave?',
          subtitle: 'All your progres will be lost',
          cancelText: 'Cancel',
          confirmText: 'Ok',
          onCancel: () {},
          onConfirm: () {},
          type: DialogType.success,
        ),
      ),
    );
  }
}
