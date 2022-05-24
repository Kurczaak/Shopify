import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_presentation/core/shopify_alert_dialog.dart';

class MockOnPressFunction {
  int count = 0;

  void handler() {
    count++;
  }
}

void main() {
  final onConfirmPressFunction = MockOnPressFunction();
  final onCancelPressFunction = MockOnPressFunction();

  final testWidget = MaterialApp(
    home: Scaffold(
        body: Center(
      child: SizedBox(
        height: 900,
        width: 900,
        child: ShopifyAlertDialog(
          key: const Key('alert-dialog'),
          title: 'Test title',
          subtitle: 'Test subtitle',
          onConfirm: onConfirmPressFunction.handler,
          onCancel: onCancelPressFunction.handler,
          cancelText: 'Cancel Text',
          confirmText: 'Confirm Text',
        ),
      ),
    )),
  );

  final widgetWithoutCancelButton = MaterialApp(
    home: Scaffold(
        body: Center(
      child: SizedBox(
        height: 900,
        width: 900,
        child: ShopifyAlertDialog(
          title: 'Test title',
          subtitle: 'Test subtitle',
          onConfirm: onConfirmPressFunction.handler,
        ),
      ),
    )),
  );

  testWidgets('Should call onConfirm function', (tester) async {
    await tester.pumpWidget(testWidget);
    await tester.tap(find.text('Confirm Text'));

    expect(onConfirmPressFunction.count, 1);
  });
  testWidgets('Should call onCancel function', (tester) async {
    await tester.pumpWidget(testWidget);
    await tester.tap(find.text('Cancel Text'));

    expect(onCancelPressFunction.count, 1);
  });
  testWidgets('Should show title text', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.text('Test title'), findsOneWidget);
  });
  testWidgets('Should show subtitle text', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.text('Test subtitle'), findsOneWidget);
  });

  testWidgets('Should show confirm button', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.widgetWithText(ElevatedButton, 'Confirm Text'), findsOneWidget);
  });
  testWidgets('Should show cancel button', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.widgetWithText(ElevatedButton, 'Cancel Text'), findsOneWidget);
  });
  testWidgets(
      'Should not show cancel button when on cancel function is not given',
      (tester) async {
    await tester.pumpWidget(widgetWithoutCancelButton);

    expect(find.widgetWithText(ElevatedButton, 'Cancel'), findsNothing);
  });
}
