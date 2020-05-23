import 'package:flutter/material.dart';
import 'package:portfolio/domain/experiences/experience_state.dart';
import 'package:portfolio/presentation/constants/colors.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({this.experience});

  final ExperienceState experience;

  @override
  Widget build(BuildContext context) {
    final color = _colorMapper(context, experience.color);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        _top(context, color, experience.title, experience.location, experience.timeframe,
            _iconMap[experience.icon] ?? Icons.adjust),
        _bottom(context, color, experience.content),
      ],
    );
  }
}

const radius = 4.0;

final _iconMap = {
  ExperienceIcon.code: Icons.code,
  ExperienceIcon.book: Icons.book,
  ExperienceIcon.home: Icons.home,
  ExperienceIcon.heart: Icons.favorite,
  ExperienceIcon.done: Icons.done,
};

Color _colorMapper(BuildContext context, ExperienceColor color) => {
      ExperienceColor.red: ThemeColors.red,
      ExperienceColor.orange: ThemeColors.orange,
      ExperienceColor.green: ThemeColors.green,
      ExperienceColor.blue: ThemeColors.blue,
      ExperienceColor.purple: ThemeColors.purple,
    }[color];

Widget _top(
  BuildContext context,
  Color color,
  String title,
  String location,
  String timeframe,
  IconData iconData,
) =>
    Container(
      key: const Key('experience_card_top_container'),
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(radius)),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            right: -20,
            child: Align(
              alignment: Alignment.centerRight,
              child: Icon(
                iconData,
                key: const Key('experience_card_icon'),
                color: ThemeColors.white25,
                size: 80,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 18,
                      color: ThemeColors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    location,
                    style: const TextStyle(
                      fontSize: 14,
                      color: ThemeColors.white,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    timeframe,
                    style: const TextStyle(
                      fontSize: 12,
                      color: ThemeColors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );

Widget _bottom(BuildContext context, Color color, String content) => Container(
      key: const Key('experience_card_bottom_container'),
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        border: Border.all(
          color: color,
        ),
        borderRadius: const BorderRadius.vertical(bottom: Radius.circular(radius)),
      ),
      padding: const EdgeInsets.all(16),
      child: Text(content),
    );
