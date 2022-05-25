import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_domain/shop.dart';
import 'package:shopify_presentation/core/shopify_dropdown_menu_button.dart';

class MockOnChangedFunction {
  Day? chosenDay;

  void onChangedCallback(Day day) {
    chosenDay = day;
  }
}

void main() {
  final tWeek = Week.empty();
  final mockOnChangedFunction = MockOnChangedFunction();

  final testWidget = MaterialApp(
    home: Scaffold(
        body: Center(
            child: SizedBox(
                height: 900,
                width: 900,
                child: ShopifyDropdownMenuButton<Day>(
                  initalText: 'Initial text',
                  items: [
                    ShopifyDropdownMenuItem(
                        valueString: tWeek.monday.day.name,
                        value: tWeek.monday),
                    ShopifyDropdownMenuItem(
                        valueString: tWeek.tuesday.day.name,
                        value: tWeek.tuesday),
                    ShopifyDropdownMenuItem(
                        valueString: tWeek.wednesday.day.name,
                        value: tWeek.wednesday),
                    ShopifyDropdownMenuItem(
                        valueString: tWeek.thursday.day.name,
                        value: tWeek.thursday),
                  ],
                  onChanged: mockOnChangedFunction.onChangedCallback,
                )))),
  );

  testWidgets('Should show initial text', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.text('Initial text'), findsOneWidget);
  });

  testWidgets('Should show items when tapped', (tester) async {
    await tester.pumpWidget(testWidget);
    await tester.tap(find.byType(ShopifyDropdownMenuButton<Day>));
    await tester.pump();
    // Should find 2 widgets because they are always visible in the widget tree
    expect(find.text('Monday'), findsNWidgets(2));
    expect(find.text('Tuesday'), findsNWidgets(2));
    expect(find.text('Wednesday'), findsNWidgets(2));
    expect(find.text('Thursday'), findsNWidgets(2));
  });

  testWidgets('Should call onChanged function', (tester) async {
    await tester.pumpWidget(testWidget);
    await tester.tap(find.byType(ShopifyDropdownMenuButton<Day>));
    await tester.pump();
    await tester.tap(find.text('Wednesday').last);
    await tester.pump();
    expect(mockOnChangedFunction.chosenDay, tWeek.wednesday);
  });
}
