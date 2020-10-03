import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
        cubit: _bloc,
        builder: (context, state) {
          if (state is ProjectsLoading) {
            return LoadingIndicator();
          } else if (state is ProjectsLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Headline(Strings.of(context).projectsHeader),
                  LayoutBuilder(
                    builder: (_, constraints) {
                      int _crossAxisCount;
                      double _imageAspectRatio;
                      if (constraints.maxWidth < 760) {
                        _crossAxisCount = 1;
                        _imageAspectRatio = 5 / 2;
                      } else if (constraints.maxWidth < 1100) {
                        _crossAxisCount = 2;
                        _imageAspectRatio = 5 / 3;
                      } else {
                        _crossAxisCount = 3;
                        _imageAspectRatio = 5 / 3;
                      }

                      return StaggeredGridView.countBuilder(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        crossAxisCount: _crossAxisCount,
                        staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
                        itemBuilder: (_, index) => ProjectCard(
                          project: state.projects[index],
                          imageAspectRatio: _imageAspectRatio,
                        ),
                        itemCount: state.projects.length,
                      );
                    },
                  ),
                ],
              ),
            );
          } else {
            return GenericFailure();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _bloc.close();
    super.dispose();
  }
}
