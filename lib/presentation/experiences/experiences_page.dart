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
import 'package:portfolio/presentation/experiences/widgets/timeline_builder.dart';

import 'widgets/experience_card.dart';

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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Headline(Strings.of(context).experienceTimelineHeader),
        Paragraph(Strings.of(context).experienceTimelineDescription),
        BlocBuilder<ExperiencesBloc, ExperiencesState>(
          cubit: _bloc,
          builder: (context, state) {
            if (state is ExperiencesLoading) {
              return LoadingIndicator();
            } else if (state is ExperiencesLoaded) {
              return Container(
                margin: const EdgeInsets.only(top: 32),
                padding: const EdgeInsets.only(bottom: 16),
                alignment: Alignment.centerLeft,
                child: TimelineBuilder<ExperienceState>(
                  items: state.experiences,
                  builder: (experience) => ExperienceCard(experience: experience),
                ),
              );
            } else {
              return GenericFailure();
            }
          },
        ),
      ]),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
}
