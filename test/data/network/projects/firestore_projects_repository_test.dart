import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/projects/firestore_project_parser.dart';
import 'package:portfolio/data/network/projects/firestore_projects_repository.dart';
import 'package:portfolio/domain/projects/entities/project.dart';
import 'package:test/test.dart';

import '../utils/firestore_mocks.dart';
import '../utils/firestore_mocks.mocks.dart';
import 'firestore_projects_repository_test.mocks.dart';

@GenerateMocks([FirestoreProjectParser])
void main() {
  late FirebaseFirestore firestore;
  late FirestoreProjectParser parser;
  late FirestoreProjectsRepository repository;
  late MockCollectionReference<Map<String, dynamic>> projectsReference;
  late MockQuerySnapshot<Map<String, dynamic>> projectsQuery;
  late MockCollectionReference<Map<String, dynamic>> tagsReference;
  late MockQuerySnapshot<Map<String, dynamic>> tagsQuery;

  setUp(() {
    firestore = MockFirebaseFirestore();
    parser = MockFirestoreProjectParser();
    repository = FirestoreProjectsRepository(firestore, parser);

    projectsReference = MockCollectionReference();
    projectsQuery = MockQuerySnapshot();
    tagsReference = MockCollectionReference();
    tagsQuery = MockQuerySnapshot();

    when(firestore.collection('projects')).thenReturn(projectsReference);
    when(projectsReference.get()).thenAnswer((_) async => projectsQuery);
    when(firestore.collection('project_tags')).thenReturn(tagsReference);
    when(tagsReference.get()).thenAnswer((_) async => tagsQuery);
  });

  test('should return an empty list of projects when firestore returns none', () async {
    when(projectsQuery.docs).thenReturn([]);
    when(tagsQuery.docs).thenReturn([]);

    final actual = await repository.getProjects();

    actual.fold(
      (l) => null,
      (r) => expect(r, equals([])),
    );
  });

  test('should return a list of projects when firestore returns some', () async {
    final project = Project(
      title: 'Title',
      summary: 'Summary',
      detail: 'Detail',
      coverImageUrl: 'Cover Image Url',
      tags: [
        ProjectTag(
          label: 'Label',
          color: 'Color',
          labelColor: 'Label Color',
          style: 'Style',
        ),
      ],
      callToActions: [
        ProjectCallToAction(
          type: 'Type',
          action: 'Action',
          style: 'Style',
          label: 'Label',
        ),
      ],
    );

    final tagDocRef = MockDocumentReference();
    when(tagDocRef.id).thenReturn('Tag ID');

    final projectData = {
      'tags': [
        tagDocRef,
      ],
    };

    final projectDoc = StubbedQueryDocumentSnapshot(stubbedData: projectData);
    final tagDoc = StubbedQueryDocumentSnapshot(id: 'Tag ID');
    final unusedTagDoc = StubbedQueryDocumentSnapshot(id: 'Unused Tag');

    when(projectsQuery.docs).thenReturn([projectDoc]);
    when(tagsQuery.docs).thenReturn([tagDoc, unusedTagDoc]);

    when(parser.parseProject(projectDoc, [tagDoc])).thenReturn(project);

    final actual = await repository.getProjects();

    expect(actual | [], equals([project]));
  });
}
