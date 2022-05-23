import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:shopify_presentation/core/green_corner_background.dart';

void main() async {
  TestWidgetsFlutterBinding.ensureInitialized();
  const testWIdget = MaterialApp(
    home: Scaffold(
        body: GreenCornerBackground(
            child: SizedBox(
      width: 600,
      height: 300,
    ))),
  );

  testWidgets('Corner image is displayed', (WidgetTester tester) async {
    await tester.pumpWidget(testWIdget);

    expect(
        find.image(
            const AssetImage(
              "images/corner_shape.png",
            ),
            skipOffstage: false),
        findsOneWidget);
  });
}
