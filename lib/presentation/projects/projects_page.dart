import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:portfolio/domain/projects/project_state.dart';
import 'package:portfolio/domain/projects/projects_bloc.dart';
import 'package:portfolio/injection.dart';
import 'package:portfolio/presentation/constants/strings.dart';
import 'package:portfolio/presentation/core/generic_failure.dart';
import 'package:portfolio/presentation/core/loading.dart';
import 'package:portfolio/presentation/core/page_scaffold.dart';
import 'package:portfolio/presentation/core/text/headline_text.dart';
import 'package:portfolio/presentation/projects/widgets/project_card.dart';

class ProjectsPage extends StatefulWidget {
  const ProjectsPage();

  @override
  _ProjectsPageState createState() => _ProjectsPageState();
}

class _ProjectsPageState extends State<ProjectsPage> {
  final _bloc = getIt<ProjectsBloc>()..add(const ProjectsEvent.loadProjects());

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      title: Strings.of(context).projectsTitle,
      body: BlocBuilder<ProjectsBloc, ProjectsState>(
        bloc: _bloc,
        builder: (context, state) => state.when(
          loading: () => LoadingIndicator(),
          loaded: (projects) => _content(context, projects),
          error: (message) => GenericFailure(message: message),
        ),
      ),
    );
  }
}

Widget _content(BuildContext context, List<ProjectState> projects) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Column(
      children: [
        Headline(Strings.of(context).projectsHeader),
        LayoutBuilder(
          builder: (_, constraints) {
            int crossAxisCount;
            double imageAspectRatio;
            if (constraints.maxWidth < 760) {
              crossAxisCount = 1;
              imageAspectRatio = 5 / 2;
            } else if (constraints.maxWidth < 1100) {
              crossAxisCount = 2;
              imageAspectRatio = 5 / 3;
            } else {
              crossAxisCount = 3;
              imageAspectRatio = 5 / 3;
            }

            return AlignedGridView.count(
              shrinkWrap: true,
              physics: const ClampingScrollPhysics(),
              crossAxisCount: crossAxisCount,
              mainAxisSpacing: 8,
              crossAxisSpacing: 8,
              itemBuilder: (_, index) => ProjectCard(
                project: projects[index],
                imageAspectRatio: imageAspectRatio,
              ),
              itemCount: projects.length,
            );
          },
        ),
      ],
    ),
  );
}
