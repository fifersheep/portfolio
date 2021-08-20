import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateMocks([
  FirebaseFirestore,
  CollectionReference,
  DocumentReference,
  Query,
  QuerySnapshot
])
class StubbedQueryDocumentSnapshot extends Fake
    implements QueryDocumentSnapshot<Map<String, dynamic>> {
  StubbedQueryDocumentSnapshot({this.id = '', this.stubbedData = const {}});

  final String id;
  final Map<String, dynamic> stubbedData;

  @override
  Map<String, dynamic> data() => stubbedData;
}
