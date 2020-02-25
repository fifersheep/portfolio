import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/widgets/text/text_emphasis_builder.dart';

void main() {
  group('test emphasis builder', () {
    testWidgets('handles no emphases', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: TextEmphasisBuilder(
          text: 'some text to emphasise, emphisising certain words',
        ),
      ));

      expect(find.text('some text to emphasise, emphisising certain words'), findsOneWidget);
    });

    testWidgets('builds a text widget for each emphasis', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: TextEmphasisBuilder(
          text: 'some text to emphasise, emphisising certain words',
          emphases: ['emphasise', 'certain words'],
        ),
      ));

      var predicate = (int pos, String text) => (w) => w is RichText && w.text.getSpanForPosition(TextPosition(offset: pos)).toPlainText() == text;

      expect(find.byWidgetPredicate(predicate(0, 'some text to ')), findsOneWidget);
      expect(find.byWidgetPredicate(predicate(13, 'emphasise')), findsOneWidget);
      expect(find.byWidgetPredicate(predicate(22, ', emphisising ')), findsOneWidget);
      expect(find.byWidgetPredicate(predicate(36, 'certain words')), findsOneWidget);
    });

    testWidgets('styles the main text correctly', (tester) async {
      var style = TextStyle(color: Colors.red);
      await tester.pumpWidget(MaterialApp(
        home: TextEmphasisBuilder(
          text: 'some text to emphasise, emphisising certain words',
          textStyle: style,
          emphases: ['emphasise', 'certain words'],
        ),
      ));

      var predicate = (int pos) => (w) => w is RichText && w.text.getSpanForPosition(TextPosition(offset: pos)).style == style;

      expect(find.byWidgetPredicate(predicate(0)), findsOneWidget);
      expect(find.byWidgetPredicate(predicate(13)), findsNothing);
      expect(find.byWidgetPredicate(predicate(22)), findsOneWidget);
      expect(find.byWidgetPredicate(predicate(36)), findsNothing);
    });

    testWidgets('styles the emphasised text correctly', (tester) async {
      var style = TextStyle(color: Colors.blue);
      await tester.pumpWidget(MaterialApp(
        home: TextEmphasisBuilder(
          text: 'some text to emphasise, emphisising certain words',
          emphases: ['emphasise', 'certain words'],
          emphasisStyle: style,
        ),
      ));

      var predicate = (int pos) => (w) => w is RichText && w.text.getSpanForPosition(TextPosition(offset: pos)).style == style;

      expect(find.byWidgetPredicate(predicate(0)), findsNothing);
      expect(find.byWidgetPredicate(predicate(13)), findsOneWidget);
      expect(find.byWidgetPredicate(predicate(22)), findsNothing);
      expect(find.byWidgetPredicate(predicate(36)), findsOneWidget);
    });
  });
}
