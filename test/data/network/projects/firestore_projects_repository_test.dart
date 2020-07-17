import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_mocks/cloud_firestore_mocks.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/projects/firestore_project_parser.dart';
import 'package:portfolio/data/network/projects/firestore_projects_repository.dart';
import 'package:portfolio/domain/projects/entities/project.dart';

import '../utils/firestore_mocks.dart';

class MockFirestoreProjectParser extends Mock implements FirestoreProjectParser {}

void main() {
  Firestore firestore;
  FirestoreProjectParser parser;
  FirestoreProjectsRepository repository;

  setUp(() {
    firestore = MockFirestoreInstance();
    parser = FirestoreProjectParser();
    repository = FirestoreProjectsRepository(firestore, parser);
  });

  test('should return an empty list of projects when firestore returns none', () async {
    final actual = await repository.getProjects();
    expect(actual.getOrElse(() => null), equals([]));
  });

  test('should return a list of untagged projects when firestore returns some', () async {
    const project = Project(
      title: 'Title',
      summary: 'Summary',
      detail: 'Detail',
      tags: [],
    );

    final projectData = {
      'title': 'Title',
      'summary': 'Summary',
      'detail': 'Detail',
      'tags': [],
    };

    final tagData = {'label': 'Label', 'style': 'Style', 'color': 'Color'};

    await firestore.collection('projects').add(projectData);
    await firestore.collection('project_tags').add(tagData);

    final actual = await repository.getProjects();

    expect(actual | null, equals([project]));
  });

  test('should return a list of tagged projects when firestore returns some', () async {
    const project = Project(
      title: 'Title',
      summary: 'Summary',
      detail: 'Detail',
      tags: [ProjectTag(label: 'Label', style: 'Style', color: 'Color', labelColor: 'Label Color')],
    );

    const tagID = 'Tag';
    final tag = MockDocumentReference();
    when(tag.documentID).thenReturn(tagID);

    final projectData = {
      'title': 'Title',
      'summary': 'Summary',
      'detail': 'Detail',
      'tags': [tag],
    };

    final tagData = {'label': 'Label', 'style': 'Style', 'color': 'Color', 'label_color': 'Label Color'};

    await firestore.collection('projects').add(projectData);
    await firestore.collection('project_tags').document(tagID).setData(tagData);

    final actual = await repository.getProjects();

    expect(actual | null, equals([project]));
  });
}
