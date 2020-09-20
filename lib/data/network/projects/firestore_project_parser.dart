import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/data/network/projects/project_parser.dart';
import 'package:portfolio/domain/projects/entities/project.dart';

@LazySingleton(as: ProjectParser)
class FirestoreProjectParser extends ProjectParser<DocumentSnapshot> {
  @override
  Project parseProject(DocumentSnapshot projectDoc, List<DocumentSnapshot> tagsDoc) => Project(
      title: projectDoc['title'] as String,
      summary: projectDoc['summary'] as String,
      detail: projectDoc['detail'] as String,
      coverImageUrl: projectDoc['cover_image_url'] as String,
      tags: tagsDoc
          .map((tag) => ProjectTag(
                label: tag['label'] as String,
                color: tag['color'] as String,
                labelColor: tag['label_color'] as String,
                style: tag['style'] as String,
              ))
          .toList(),
      callToActions: (projectDoc['call_to_actions'] as List<dynamic>)
          .map((callToAction) => ProjectCallToAction(
                type: callToAction['type'] as String,
                action: callToAction['action'] as String,
                style: callToAction['style'] as String,
                label: callToAction['label'] as String,
              ))
          .toList());
}