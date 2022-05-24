import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shopify_presentation/core/shopify_text_form_field.dart';

class MockOnChangedFunction {
  String inputedText = '';

  void onChangedHandler(String input) {
    inputedText = input;
  }
}

class MockValidatorFunction {
  String? validatedText = '';

  String? validate(String? input) {
    validatedText = input?.replaceAll(' ', '');
    return validatedText;
  }
}

void main() {
  final MockOnChangedFunction mockOnChangedFunction = MockOnChangedFunction();
  final mockValidatorFunction = MockValidatorFunction();
  final textEditingController = TextEditingController();
  late TextInputAction textInputAction;
  late TextInputType keyboardType;
  const minLines = 3;
  const maxLines = 9;

  textInputAction = TextInputAction.emergencyCall;
  keyboardType = TextInputType.datetime;

  final testWidget = MaterialApp(
    home: Scaffold(
        body: Center(
      child: SizedBox(
        height: 200,
        width: 700,
        child: ShopifyTextFormField(
          key: const Key('text-form-field'),
          fieldName: 'Test Field Name',
          controller: textEditingController,
          onChanged: mockOnChangedFunction.onChangedHandler,
          keyboardType: keyboardType,
          maxLines: maxLines,
          minLines: minLines,
          showErrorMessages: true,
          textInputAction: textInputAction,
          validator: mockValidatorFunction.validate,
        ),
      ),
    )),
  );

  testWidgets(
      'Should set AutovalidateMode to disabled when showErrorMessages flag is set to false',
      (tester) async {
    await tester.pumpWidget(MaterialApp(
        home: Scaffold(
            body: Center(
                child: SizedBox(
                    height: 200,
                    width: 700,
                    child: ShopifyTextFormField(
                      showErrorMessages: false,
                      fieldName: 'Test Field Name',
                      onChanged: mockOnChangedFunction.onChangedHandler,
                    ))))));
    final element = tester.widget<TextFormField>(find.byType(TextFormField));
    expect(element.autovalidateMode, AutovalidateMode.disabled);
  });
  testWidgets(
      'Should set AutovalidateMode to always when showErrorMessages flag is set to true',
      (tester) async {
    await tester.pumpWidget(testWidget);
    final element = tester.widget<TextFormField>(find.byType(TextFormField));
    expect(element.autovalidateMode, AutovalidateMode.always);
  });

  testWidgets('Should call validator when text changes', (tester) async {
    await tester.pumpWidget(testWidget);
    await tester.enterText(
        find.byType(ShopifyTextFormField), 'Test input text');
    await tester.pump();
    expect(mockValidatorFunction.validatedText, 'Testinputtext');
  });

  testWidgets('Should call onChangedFunction when text changes',
      (tester) async {
    await tester.pumpWidget(testWidget);
    await tester.enterText(
        find.byType(ShopifyTextFormField), 'Test input text');
    await tester.pump();
    expect(mockOnChangedFunction.inputedText, 'Test input text');
  });

  testWidgets('Should show field name', (tester) async {
    await tester.pumpWidget(testWidget);
    expect(find.text('Test Field Name'), findsOneWidget);
  });

  testWidgets('Should pass text editing controller', (tester) async {
    await tester.pumpWidget(testWidget);
    final element = tester.widget<TextField>(find.byType(TextField));
    expect(element.controller, textEditingController);
  });

  testWidgets('Should pass keyboardType', (tester) async {
    await tester.pumpWidget(testWidget);
    final element = tester.widget<TextField>(find.byType(TextField));
    expect(element.keyboardType, keyboardType);
  });

  testWidgets('Should pass maxLines', (tester) async {
    await tester.pumpWidget(testWidget);
    final element = tester.widget<TextField>(find.byType(TextField));
    expect(element.maxLines, maxLines);
  });

  testWidgets('Should pass minLines', (tester) async {
    await tester.pumpWidget(testWidget);
    final element = tester.widget<TextField>(find.byType(TextField));
    expect(element.minLines, minLines);
  });

  testWidgets('Should pass textInputAction', (tester) async {
    await tester.pumpWidget(testWidget);
    final element = tester.widget<TextField>(find.byType(TextField));
    expect(element.textInputAction, textInputAction);
  });
}
