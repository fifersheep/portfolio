import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/domain/experiences/experience_state.dart';
import 'package:portfolio/presentation/constants/colors.dart';
import 'package:portfolio/presentation/experiences/widgets/experience_card.dart';

void main() {
  group('test experience card', () {
    testWidgets('has the expected text', (tester) async {
      await tester.pumpWidget(const Directionality(
        textDirection: TextDirection.ltr,
        child: ExperienceCard(
          experience: ExperienceState(
            title: 'Title',
            location: 'Location',
            timeframe: 'Timeframe',
            content: 'Content',
            color: ExperienceColor.red,
            icon: ExperienceIcon.book,
          ),
        ),
      ));

      expect(find.text('Title'), findsOneWidget);
      expect(find.text('Location'), findsOneWidget);
      expect(find.text('Timeframe'), findsOneWidget);
      expect(find.text('Content'), findsOneWidget);
    });

    final colors = {
      ExperienceColor.red: ThemeColors.red,
      ExperienceColor.orange: ThemeColors.orange,
      ExperienceColor.green: ThemeColors.green,
      ExperienceColor.blue: ThemeColors.blue,
      ExperienceColor.purple: ThemeColors.purple,
    };

    colors.forEach((experienceColor, themeColor) {
      testWidgets('is colored for $experienceColor', (tester) async {
        const topKey = Key('experience_card_top_container');
        const bottomKey = Key('experience_card_bottom_container');

        await tester.pumpWidget(Directionality(
            textDirection: TextDirection.ltr,
            child: ExperienceCard(
              experience: ExperienceState(
                title: "Title",
                location: "Location",
                timeframe: "Timeframe",
                content: "Content",
                color: experienceColor,
                icon: ExperienceIcon.book,
              ),
            )));

        final topContainer = tester.widget(find.byKey(topKey)) as Container;
        final topDecoration = topContainer.decoration as BoxDecoration;
        expect(topDecoration.color, themeColor);

        final expectedBorderSide = BorderSide(color: themeColor);
        final bottomContainer = tester.widget(find.byKey(bottomKey)) as Container;
        final bottomDecoration = bottomContainer.decoration as BoxDecoration;
        final bottomBorder = bottomDecoration.border as Border;
        expect(bottomBorder.top, expectedBorderSide);
        expect(bottomBorder.bottom, expectedBorderSide);
        expect(bottomBorder.left, expectedBorderSide);
        expect(bottomBorder.right, expectedBorderSide);
      });
    });

    final icons = {
      ExperienceIcon.code: Icons.code,
      ExperienceIcon.book: Icons.book,
      ExperienceIcon.heart: Icons.favorite,
      ExperienceIcon.home: Icons.home,
      ExperienceIcon.done: Icons.done,
    };

    icons.forEach((experienceIcon, iconData) {
      testWidgets('has the expected icon widget for $experienceIcon', (tester) async {
        const key = Key('experience_card_icon');

        await tester.pumpWidget(Directionality(
            textDirection: TextDirection.ltr,
            child: ExperienceCard(
              experience: ExperienceState(
                title: "Title",
                location: "Location",
                timeframe: "Timeframe",
                content: "Content",
                color: ExperienceColor.red,
                icon: experienceIcon,
              ),
            )));

        final iconWidget = tester.widget(find.byKey(key)) as Icon;
        expect(iconWidget.icon, iconData);
      });
    });
  });
}
