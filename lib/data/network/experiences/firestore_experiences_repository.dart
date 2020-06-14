import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/domain/core/error/failures.dart';
import 'package:portfolio/domain/experiences/entities/experience.dart';
import 'package:portfolio/domain/experiences/experiences_repository.dart';

import 'experience_parser.dart';

@LazySingleton(as: ExperiencesRepository)
class FirestoreExperiencesRepository implements ExperiencesRepository {
  FirestoreExperiencesRepository(this._firestore, this._parser);

  final Firestore _firestore;
  final ExperienceParser<DocumentSnapshot> _parser;

  @override
  Future<Either<Failure, List<Experience>>> getExperiences() async {
    return Task(() => _firestore.collection('experiences').orderBy('start_date', descending: true).getDocuments())
        .attempt()
        .map(_failure)
        .run()
        .then(_success);
  }

  FutureOr<Either<Failure, List<Experience>>> _success(Either<Failure, QuerySnapshot> either) {
    return either.map((query) => query.documents.map(_parser.parse).toList());
  }

  Either<Failure, QuerySnapshot> _failure(Either<Object, QuerySnapshot> either) {
    return either.leftMap((_) => DataRetrievalFailure());
  }
}
