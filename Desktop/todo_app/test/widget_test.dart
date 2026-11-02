import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todo_app/main.dart';

void main() {
  testWidgets('Todo items can be checked and unchecked', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(Checkbox), findsNWidgets(5));
    expect(tester.widget<Checkbox>(find.byType(Checkbox).first).value, isFalse);

    await tester.tap(find.byType(Checkbox).first);
    await tester.pump();

    expect(tester.widget<Checkbox>(find.byType(Checkbox).first).value, isTrue);

    await tester.tap(find.byType(Checkbox).first);
    await tester.pump();

    expect(tester.widget<Checkbox>(find.byType(Checkbox).first).value, isFalse);
  });
}
