import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_presentation/core/photos_carousel_slider.dart';

class MockOnPressedFunction {
  int called = 0;
  int pressedIndex = -1;

  void indexedHandler(int index) {
    called++;
    pressedIndex = index;
  }
}

void main() {
  final mockOnPressedFunction = MockOnPressedFunction();
  final testWidget = MaterialApp(
    home: Scaffold(
        body: Center(
      child: SizedBox(
        height: 700,
        width: 700,
        child: PhotosCarouselSlider(
          widgets: const [
            SizedBox(height: 100, width: 100),
            SizedBox(height: 100, width: 100),
            SizedBox(height: 100, width: 100),
          ],
          onTap: mockOnPressedFunction.indexedHandler,
        ),
      ),
    )),
  );
  testWidgets('photos call tap function with given index', (tester) async {
    await tester.pumpWidget(testWidget);
    await tester.pump();

    await tester.ensureVisible(find.byKey(
        const Key(
          'widget-1',
        ),
        skipOffstage: false));
    await tester.pumpAndSettle();
    await tester.tap(find.byKey(
        const Key(
          'widget-1',
        ),
        skipOffstage: false));

    expect(mockOnPressedFunction.called, 1);
    expect(mockOnPressedFunction.pressedIndex, 1);
  });
}
