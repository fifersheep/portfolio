import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/presentation/core/text/text_emphasis_builder.dart';

void main() {
  group('test emphasis builder', () {
    testWidgets('handles no emphases', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: TextEmphasisBuilder(
          text: 'some text to emphasise, emphisising certain words',
        ),
      ));

      expect(find.text('some text to emphasise, emphisising certain words'), findsOneWidget);
    });

    testWidgets('builds a text widget for each emphasis', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: TextEmphasisBuilder(
          text: 'some text to emphasise, emphisising certain words',
          emphases: ['emphasise', 'certain words'],
        ),
      ));

      WidgetPredicate isRichTextAtPosition(int pos, String text) =>
          (w) => w is RichText && w.text.getSpanForPosition(TextPosition(offset: pos)).toPlainText() == text;

      expect(find.byWidgetPredicate(isRichTextAtPosition(0, 'some text to ')), findsOneWidget);
      expect(find.byWidgetPredicate(isRichTextAtPosition(13, 'emphasise')), findsOneWidget);
      expect(find.byWidgetPredicate(isRichTextAtPosition(22, ', emphisising ')), findsOneWidget);
      expect(find.byWidgetPredicate(isRichTextAtPosition(36, 'certain words')), findsOneWidget);
    });

    testWidgets('styles the main text correctly', (tester) async {
      final style = TextStyle(color: Colors.red);
      await tester.pumpWidget(MaterialApp(
        home: TextEmphasisBuilder(
          text: 'some text to emphasise, emphisising certain words',
          textStyle: style,
          emphases: const ['emphasise', 'certain words'],
        ),
      ));

      WidgetPredicate isRichTextAtPositionWithStyle(int pos) =>
          (w) => w is RichText && w.text.getSpanForPosition(TextPosition(offset: pos)).style == style;

      expect(find.byWidgetPredicate(isRichTextAtPositionWithStyle(0)), findsOneWidget);
      expect(find.byWidgetPredicate(isRichTextAtPositionWithStyle(13)), findsNothing);
      expect(find.byWidgetPredicate(isRichTextAtPositionWithStyle(22)), findsOneWidget);
      expect(find.byWidgetPredicate(isRichTextAtPositionWithStyle(36)), findsNothing);
    });

    testWidgets('styles the emphasised text correctly', (tester) async {
      final style = TextStyle(color: Colors.blue);
      await tester.pumpWidget(MaterialApp(
        home: TextEmphasisBuilder(
          text: 'some text to emphasise, emphisising certain words',
          emphases: const ['emphasise', 'certain words'],
          emphasisStyle: style,
        ),
      ));

      WidgetPredicate isRichTextAtPositionWithStyle(int pos) =>
          (w) => w is RichText && w.text.getSpanForPosition(TextPosition(offset: pos)).style == style;

      expect(find.byWidgetPredicate(isRichTextAtPositionWithStyle(0)), findsNothing);
      expect(find.byWidgetPredicate(isRichTextAtPositionWithStyle(13)), findsOneWidget);
      expect(find.byWidgetPredicate(isRichTextAtPositionWithStyle(22)), findsNothing);
      expect(find.byWidgetPredicate(isRichTextAtPositionWithStyle(36)), findsOneWidget);
    });
  });
}
