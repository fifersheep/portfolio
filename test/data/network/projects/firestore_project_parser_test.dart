import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/projects/firestore_project_parser.dart';
import 'package:portfolio/domain/projects/entities/project.dart';

import '../utils/firestore_mocks.dart';

void main() {
  FirestoreProjectParser parser;

  setUp(() async {
    parser = FirestoreProjectParser();
  });

  test('should parse a project with all properties', () async {
    final document = MockDocumentSnapshot();
    when(document['title']).thenReturn('Title');
    when(document['summary']).thenReturn('Summary');
    when(document['detail']).thenReturn('Detail');
    when(document['cover_image_url']).thenReturn('Cover Image Url');
    when(document['call_to_actions']).thenReturn([
      {
        'type': 'Type',
        'action': 'Action',
        'style': 'Style',
        'label': 'Label',
      }
    ]);

    final tagDoc = MockDocumentSnapshot();
    when(tagDoc['label']).thenReturn('Label');
    when(tagDoc['color']).thenReturn('Color');
    when(tagDoc['style']).thenReturn('Style');

    final actual = parser.parseProject(document, [tagDoc]);

    const expected = Project(
      title: 'Title',
      summary: 'Summary',
      detail: 'Detail',
      coverImageUrl: 'Cover Image Url',
      tags: [
        ProjectTag(label: 'Label', color: 'Color', style: 'Style'),
      ],
      callToActions: [
        ProjectCallToAction(type: 'Type', action: 'Action', style: 'Style', label: 'Label'),
      ],
    );

    expect(actual, equals(expected));
  });
}
