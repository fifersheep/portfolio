// Mocks generated by Mockito 5.4.2 from annotations
// in portfolio/test/domain/projects/projects_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:mockito/mockito.dart' as _i1;
import 'package:portfolio/data/network/response.dart' as _i2;
import 'package:portfolio/domain/projects/entities/project.dart' as _i5;
import 'package:portfolio/domain/projects/projects_repository.dart' as _i3;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeResponse_0<T> extends _i1.SmartFake implements _i2.Response<T> {
  _FakeResponse_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [ProjectsRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockProjectsRepository extends _i1.Mock implements _i3.ProjectsRepository {
  MockProjectsRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.Response<List<_i5.Project>>> getProjects() => (super.noSuchMethod(
        Invocation.method(
          #getProjects,
          [],
        ),
        returnValue: _i4.Future<_i2.Response<List<_i5.Project>>>.value(_FakeResponse_0<List<_i5.Project>>(
          this,
          Invocation.method(
            #getProjects,
            [],
          ),
        )),
      ) as _i4.Future<_i2.Response<List<_i5.Project>>>);
}
