// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('XD', (WidgetTester tester) async {
    final FocusNode focusNode = FocusNode();

    final instance1 = [AutofillHints.email];
    final instance2 = [AutofillHints.email];
    await tester.pumpWidget(
      MaterialApp(
        home: Material(
          child: Center(
            child: TextField(
              focusNode: focusNode,
              autofillHints: instance1,
            ),
          ),
        ),
      ),
    );

    expect(tester.testTextInput.isVisible, isFalse);

    FocusScope.of(tester.element(find.byType(TextField)))
        .requestFocus(focusNode);
    await tester.idle();

    expect(tester.testTextInput.isVisible, isTrue);

    expect(
      tester.widget(find.byType(EditableText)),
      isA<EditableText>()
          .having((t) => t.autofillHints, 'textAlign', same(instance1)),
    );
  });
}
