// Mocks generated by Mockito 5.0.14 from annotations
// in portfolio/test/data/network/projects/firestore_projects_repository_test.dart.
// Do not manually edit this file.

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:portfolio/data/network/projects/firestore_project_parser.dart' as _i3;
import 'package:portfolio/domain/projects/entities/project.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeProject_0 extends _i1.Fake implements _i2.Project {}

/// A class which mocks [FirestoreProjectParser].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirestoreProjectParser extends _i1.Mock implements _i3.FirestoreProjectParser {
  MockFirestoreProjectParser() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Project parseProject(_i4.DocumentSnapshot<Object?>? projectDoc, List<_i4.DocumentSnapshot<Object?>>? tagsDoc) =>
      (super.noSuchMethod(Invocation.method(#parseProject, [projectDoc, tagsDoc]), returnValue: _FakeProject_0())
          as _i2.Project);
  @override
  String toString() => super.toString();
}
