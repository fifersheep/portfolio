import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/projects/firestore_project_parser.dart';
import 'package:portfolio/domain/projects/entities/project.dart';
import 'package:test/test.dart';

import '../utils/firestore_mocks.dart';
import '../utils/firestore_mocks.mocks.dart';

void main() {
  late FirestoreProjectParser parser;

  setUp(() async {
    parser = FirestoreProjectParser();
  });

  test('should parse a project with all properties', () async {
    final projectDocData = {
      'title': 'Title',
      'summary': 'Summary',
      'detail': 'Detail',
      'cover_image_url': 'Cover Image Url',
      'call_to_actions': [
        {
          'type': 'Type',
          'action': 'Action',
          'style': 'Style',
          'label': 'Label',
        }
      ],
    };

    final tagDocData = {
      'label': 'Label',
      'color': 'Color',
      'label_color': 'Label Color',
      'style': 'Style',
    };

    final projectDoc =
        StubbedQueryDocumentSnapshot(stubbedData: projectDocData);
    final tagDoc = StubbedQueryDocumentSnapshot(stubbedData: tagDocData);

    final actual = parser.parseProject(projectDoc, [tagDoc]);

    final expected = Project(
      title: 'Title',
      summary: 'Summary',
      detail: 'Detail',
      coverImageUrl: 'Cover Image Url',
      tags: [
        ProjectTag(
            label: 'Label',
            color: 'Color',
            labelColor: 'Label Color',
            style: 'Style'),
      ],
      callToActions: [
        ProjectCallToAction(
            type: 'Type', action: 'Action', style: 'Style', label: 'Label'),
      ],
    );

    expect(actual, equals(expected));
  });

  test('should parse a project containing a tag with no color', () async {
    final projectDocData = {
      'title': 'Title',
      'summary': 'Summary',
      'detail': 'Detail',
      'cover_image_url': 'Cover Image Url',
      'call_to_actions': [],
    };

    final tagDocData = {
      'label': 'Label',
      'label_color': 'Label Color',
      'style': 'Style',
    };

    final projectDoc =
        StubbedQueryDocumentSnapshot(stubbedData: projectDocData);
    final tagDoc = StubbedQueryDocumentSnapshot(stubbedData: tagDocData);

    final actual = parser.parseProject(projectDoc, [tagDoc]);

    final expected = Project(
      title: 'Title',
      summary: 'Summary',
      detail: 'Detail',
      coverImageUrl: 'Cover Image Url',
      tags: [
        ProjectTag(label: 'Label', labelColor: 'Label Color', style: 'Style'),
      ],
      callToActions: [],
    );

    expect(actual, equals(expected));
  });
}
