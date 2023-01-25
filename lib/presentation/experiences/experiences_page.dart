import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/domain/experiences/experience_state.dart';
import 'package:portfolio/domain/experiences/experiences_bloc.dart';
import 'package:portfolio/injection.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/core/generic_failure.dart';
import 'package:portfolio/presentation/core/loading.dart';
import 'package:portfolio/presentation/core/page_scaffold.dart';
import 'package:portfolio/presentation/core/text/headline_text.dart';
import 'package:portfolio/presentation/core/text/paragraph_text.dart';
import 'package:portfolio/presentation/experiences/widgets/experience_card.dart';
import 'package:portfolio/presentation/experiences/widgets/timeline_builder.dart';

class ExperiencesPage extends StatefulWidget {
  const ExperiencesPage();

  @override
  _ExperiencesPageState createState() => _ExperiencesPageState();
}

class _ExperiencesPageState extends State<ExperiencesPage> {
  final _bloc = getIt<ExperiencesBloc>()..add(const ExperiencesEvent.loadExperiences());

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Strings.of(context).experienceTitle,
      maxWidth: 800,
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Headline(Strings.of(context).experienceTimelineHeader),
            Paragraph(Strings.of(context).experienceTimelineDescription),
            BlocBuilder<ExperiencesBloc, ExperiencesState>(
              bloc: _bloc,
              builder: (context, state) => state.when(
                loading: () => LoadingIndicator(),
                loaded: (experiences) => _content(experiences),
                error: () => GenericFailure(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _content(List<ExperienceState> experiences) => Container(
      margin: const EdgeInsets.only(top: 32),
      padding: const EdgeInsets.only(bottom: 16),
      alignment: Alignment.centerLeft,
      child: TimelineBuilder<ExperienceState>(
        items: experiences,
        builder: (experience) => ExperienceCard(experience: experience),
      ),
    );
