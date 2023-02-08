import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:portfolio/data/network/supabase_api.dart';
import 'package:portfolio/domain/projects/entities/project.dart';
import 'package:portfolio/data/network/response.dart';
import 'package:portfolio/data/network/projects/supabase_projects_repository.dart';

import '../network_test.mocks.dart';

void main() {
  late Api api;
  late SupabaseProjectsRepository repository;

  setUp(() {
    api = MockApi();
    repository = SupabaseProjectsRepository(api);
  });

  test('projects with no tags or ctas are successfully returned', () async {
    when(api.getProjects()).thenAnswer((_) => Future.value({
          'projects': [
            {
              'id': 123,
              'title': 'Title',
              'summary': 'Summary',
              'detail': 'Detail',
              'cover_img_url': 'cover/img/url',
              'slug': 'Slug',
              'tags': [],
              'call_to_actions': [],
            }
          ]
        }));

    final actual = await repository.getProjects();

    expect(
      actual,
      Response.success([
        Project(
          id: 123,
          title: 'Title',
          summary: 'Summary',
          detail: 'Detail',
          coverImageUrl: 'cover/img/url',
          tags: [],
          callToActions: [],
        )
      ]),
    );
  });

  test('experiences with tags are successfully returned', () async {
    final startDate = '2007-09-01';
    when(api.getProjects()).thenAnswer((_) => Future.value({
          'projects': [
            {
              'id': 123,
              'title': 'Title',
              'summary': 'Summary',
              'detail': 'Detail',
              'cover_img_url': 'cover/img/url',
              'slug': 'Slug',
              'tags': [
                {
                  'id': 456,
                  'label': 'Label',
                  'label_color': 'Label Color',
                  'color': 'Color',
                  'style': 'Style',
                },
              ],
              'call_to_actions': [],
            }
          ]
        }));

    final actual = await repository.getProjects();

    expect(
      actual,
      Response.success([
        Project(
          id: 123,
          title: 'Title',
          summary: 'Summary',
          detail: 'Detail',
          coverImageUrl: 'cover/img/url',
          tags: [
            ProjectTag(
              id: 456,
              label: 'Label',
              labelColor: 'Label Color',
              color: 'Color',
              style: 'Style',
            )
          ],
          callToActions: [],
        )
      ]),
    );
  });
  test('experiences with call to actions are successfully returned', () async {
    final endDate = '2007-09-01';
    when(api.getProjects()).thenAnswer((_) => Future.value({
          'projects': [
            {
              'id': 123,
              'title': 'Title',
              'summary': 'Summary',
              'detail': 'Detail',
              'cover_img_url': 'cover/img/url',
              'slug': 'Slug',
              'tags': [],
              'call_to_actions': [
                {
                  'id': 456,
                  'label': 'Label',
                  'type': 'Type',
                  'action': 'Action',
                  'style': 'Style',
                },
              ],
            }
          ]
        }));

    final actual = await repository.getProjects();

    expect(
      actual,
      Response.success([
        Project(
          id: 123,
          title: 'Title',
          summary: 'Summary',
          detail: 'Detail',
          coverImageUrl: 'cover/img/url',
          tags: [],
          callToActions: [
            ProjectCallToAction(
              id: 456,
              label: 'Label',
              type: 'Type',
              action: 'Action',
              style: 'Style',
            )
          ],
        )
      ]),
    );
  });

  test('a failure is returned when project can\'t be parsed', () async {
    when(api.getProjects()).thenAnswer((_) => Future.value({
          'projects': [
            {
              'nonsense': 'data',
            }
          ]
        }));

    final actual = await repository.getProjects();

    expect(
      actual,
      Response<List<Project>>.failure('Failed to parse project'),
    );
  });
}
