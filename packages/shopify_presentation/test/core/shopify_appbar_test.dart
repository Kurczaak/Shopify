import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_presentation/core/shopify_appbar.dart';

class MockOnTapBackCallback {
  int count = 0;

  void onTapBackCallback() {
    count++;
  }
}

void main() {
  final mockOnTapBack = MockOnTapBackCallback();

  final testWidget = MaterialApp(
    home: Scaffold(
        appBar: ShopifyAppBar(
          onTapBack: mockOnTapBack.onTapBackCallback,
          appBar: AppBar(),
          title: 'Test title',
        ),
        body: Container()),
  );

  testWidgets('Should display title', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.text('Test title'), findsOneWidget);
  });

  testWidgets('Should show Icon Button given onTapBack function',
      (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.byType(IconButton), findsOneWidget);
  });

  testWidgets('Should call onTapBack function', (tester) async {
    await tester.pumpWidget(testWidget);
    await tester.tap(find.byType(IconButton));
    expect(mockOnTapBack.count, 1);
  });

  testWidgets('Should display logo image', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.image(const AssetImage('images/logo.png')), findsOneWidget);
  });

  testWidgets('Should not show Icon Button given no onTapBack function',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: Scaffold(
          appBar: ShopifyAppBar(
            appBar: AppBar(),
            title: 'Test title',
          ),
          body: Container()),
    ));
    expect(find.byType(IconButton), findsNothing);
  });
}
