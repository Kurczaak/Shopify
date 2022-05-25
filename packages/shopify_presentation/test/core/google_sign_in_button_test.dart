import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_presentation/core/google_sign_in_button.dart';

class MockOnPressedFunction {
  int called = 0;

  void handler() {
    called++;
  }
}

void main() {
  final mockOnPressedFunction = MockOnPressedFunction();

  final testWidget = MaterialApp(
      home: Scaffold(
          body: GoogleSignInButton(
              key: const Key('button'),
              onPressed: mockOnPressedFunction.handler)));

  testWidgets('should show sign in text', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.text('Sign in with Google'), findsOneWidget);
  });

  testWidgets('should show google logo image', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(
        find.image(const AssetImage(
          'assets/logos/google_light.png',
          package: 'flutter_signin_button',
        )),
        findsOneWidget);
  });
  testWidgets('should call tap function', (tester) async {
    await tester.pumpWidget(testWidget);
    await tester.tap(find.byKey(const Key('button')));
    expect(mockOnPressedFunction.called, 1);
  });
}
