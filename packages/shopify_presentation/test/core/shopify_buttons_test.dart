import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_presentation/core/shopify_buttons.dart';

class MockOnPressedFunction {
  int called = 0;

  void handler() {
    called++;
  }
}

void main() {
  late MockOnPressedFunction mockOnPressedFunction;
  late MaterialApp shopifyPrimaryButtonApp;
  late MaterialApp shopifySecondaryButtonApp;
  late MaterialApp shopifyIconTextButtonApp;
  setUp(() {
    mockOnPressedFunction = MockOnPressedFunction();
    shopifyPrimaryButtonApp = MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green,
          errorColor: Colors.red,
        ),
        home: Scaffold(
            body: Center(
                child: ShopifyPrimaryButton(
                    key: const Key('primary-button'),
                    text: "Test Text",
                    onPressed: mockOnPressedFunction.handler))));
    shopifySecondaryButtonApp = MaterialApp(
        home: Scaffold(
            body: Center(
                child: ShopifySecondaryButton(
                    key: const Key('secondary-button'),
                    text: "Test Text",
                    onPressed: mockOnPressedFunction.handler))));

    shopifyIconTextButtonApp = MaterialApp(
        home: Scaffold(
            body: Center(
                child: ShopifyIconTextButton(
                    key: const Key('icon-text-button'),
                    title: 'Test Title',
                    subtitle: 'Test Subtitle',
                    icon: Icons.abc,
                    onPressed: mockOnPressedFunction.handler))));
  });

  group('ShopifyPrimaryButton', () {
    testWidgets('should show given text', (tester) async {
      await tester.pumpWidget(shopifyPrimaryButtonApp);
      expect(find.text('Test Text'), findsOneWidget);
    });
    testWidgets('should call tap function', (tester) async {
      await tester.pumpWidget(shopifyPrimaryButtonApp);
      await tester.tap(find.byKey(const Key('primary-button')));
      expect(mockOnPressedFunction.called, 1);
    });
  });

  group('ShopifySecondaryButton', () {
    testWidgets('should show given text', (tester) async {
      await tester.pumpWidget(shopifySecondaryButtonApp);
      expect(find.text('Test Text'), findsOneWidget);
    });
    testWidgets('should call tap function', (tester) async {
      await tester.pumpWidget(shopifySecondaryButtonApp);
      await tester.tap(find.byKey(const Key('secondary-button')));
      expect(mockOnPressedFunction.called, 1);
    });
  });

  group('ShopifyIconTextButton', () {
    testWidgets('should show given texts', (tester) async {
      await tester.pumpWidget(shopifyIconTextButtonApp);
      expect(find.text('Test Title'), findsOneWidget);
      expect(find.text('Test Subtitle'), findsOneWidget);
    });

    testWidgets('should show given icon', (tester) async {
      await tester.pumpWidget(shopifyIconTextButtonApp);
      expect(find.byIcon(Icons.abc), findsOneWidget);
    });
    testWidgets('should call tap function', (tester) async {
      await tester.pumpWidget(shopifyIconTextButtonApp);
      await tester.tap(find.byKey(const Key('icon-text-button')));
      expect(mockOnPressedFunction.called, 1);
    });
  });
}
