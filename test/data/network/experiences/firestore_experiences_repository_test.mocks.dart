// Mocks generated by Mockito 5.0.14 from annotations
// in portfolio/test/data/network/experiences/firestore_experiences_repository_test.dart.
// Do not manually edit this file.

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:mockito/mockito.dart' as _i1;
import 'package:portfolio/data/network/experiences/firestore_experience_parser.dart'
    as _i3;
import 'package:portfolio/domain/experiences/entities/experience.dart' as _i2;

// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis

class _FakeExperience_0 extends _i1.Fake implements _i2.Experience {}

/// A class which mocks [FirestoreExperienceParser].
///
/// See the documentation for Mockito's code generation for more information.
class MockFirestoreExperienceParser extends _i1.Mock
    implements _i3.FirestoreExperienceParser {
  MockFirestoreExperienceParser() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.Experience parse(_i4.DocumentSnapshot<Object?>? source) =>
      (super.noSuchMethod(Invocation.method(#parse, [source]),
          returnValue: _FakeExperience_0()) as _i2.Experience);
  @override
  String toString() => super.toString();
}
