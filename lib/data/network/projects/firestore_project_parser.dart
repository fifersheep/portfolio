import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/data/network/projects/project_parser.dart';
import 'package:portfolio/domain/projects/entities/project.dart';

@LazySingleton(as: ProjectParser)
class FirestoreProjectParser extends ProjectParser<DocumentSnapshot> {
  @override
  Project parseProject(DocumentSnapshot projectDoc, List<DocumentSnapshot> tagsDoc) {
    final projectData = projectDoc.data();
    return Project(
      title: projectData?['title'] as String,
      summary: projectData?['summary'] as String,
      detail: projectData?['detail'] as String,
      coverImageUrl: projectData?['cover_image_url'] as String,
      tags: tagsDoc.map((tag) {
        final tagData = tag.data();
        return ProjectTag(
          label: tagData?['label'] as String,
          color: tagData?['color'] as String?,
          labelColor: tagData?['label_color'] as String,
          style: tagData?['style'] as String,
        );
      }).toList(),
      callToActions: (projectData?['call_to_actions'] as List<dynamic>)
          .map(
            (callToAction) => ProjectCallToAction(
              type: callToAction['type'] as String,
              action: callToAction['action'] as String,
              style: callToAction['style'] as String,
              label: callToAction['label'] as String,
            ),
          )
          .toList(),
    );
  }
}
