import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/data/network/projects/project_parser.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/projects/entities/project.dart';
import 'package:portfolio/domain/projects/projects_repository.dart';

@LazySingleton(as: ProjectsRepository)
class FirestoreProjectsRepository implements ProjectsRepository {
  FirestoreProjectsRepository(this._firestore, this._parser);

  final FirebaseFirestore _firestore;
  final ProjectParser<DocumentSnapshot> _parser;

  @override
  Future<Either<Failure, List<Project>>> getProjects() async {
    return Task(() => Future.wait([
          _firestore.collection('projects').get(),
          _firestore.collection('project_tags').get(),
        ])).attempt().map(_failure).run().then(_success);
  }

  FutureOr<Either<Failure, List<Project>>> _success(Either<Failure, List<QuerySnapshot>> either) async {
    return either.map((snapshots) {
      final projectsQuerySnapshot = snapshots[0].docs;
      final tagsQuerySnapshot = snapshots[1].docs;

      return projectsQuerySnapshot.map((projectDoc) {
        final data = projectDoc.data()! as Map<String, dynamic>;
        final projectTagDocs = data['tags'] as List;
        bool _projectIsTagged(tagDoc) => projectTagDocs.map((ref) => ref.id).contains(tagDoc.id);
        final tags = tagsQuerySnapshot.where(_projectIsTagged).toList();
        return _parser.parseProject(projectDoc, tags);
      }).toList();
    });
  }

  Either<Failure, List<QuerySnapshot>> _failure(Either<Object, List<QuerySnapshot>> either) {
    return either.leftMap((_) => const Failure.dataRetrievalFailure());
  }
}
