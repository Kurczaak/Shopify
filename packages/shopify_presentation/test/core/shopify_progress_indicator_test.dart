import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_presentation/core/shopify_progress_indicator.dart';

void main() {
  const testWidget = MaterialApp(
    home: Scaffold(
        body: Center(
      child: ShopifyProgressIndicator(),
    )),
  );
  testWidgets('should show logo image', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.image(const AssetImage('images/logo.png')), findsOneWidget);
  });
}
