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

    final tagDoc = MockDocumentSnapshot();
    when(tagDoc['label']).thenReturn('Label');
    when(tagDoc['color']).thenReturn('Color');
    when(tagDoc['style']).thenReturn('Style');

    final actual = parser.parseProject(document, [tagDoc]);

    const expected = Project(title: 'Title', summary: 'Summary', detail: 'Detail', tags: [
      ProjectTag(label: 'Label', color: 'Color', style: 'Style'),
    ]);

    expect(actual, equals(expected));
  });
}
