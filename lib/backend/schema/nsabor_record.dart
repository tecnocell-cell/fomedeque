import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NsaborRecord extends FirestoreRecord {
  NsaborRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  bool hasNumero() => _numero != null;

  void _initializeFields() {
    _numero = castToType<int>(snapshotData['numero']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nsabor');

  static Stream<NsaborRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NsaborRecord.fromSnapshot(s));

  static Future<NsaborRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NsaborRecord.fromSnapshot(s));

  static NsaborRecord fromSnapshot(DocumentSnapshot snapshot) => NsaborRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NsaborRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NsaborRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NsaborRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NsaborRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNsaborRecordData({
  int? numero,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'numero': numero,
    }.withoutNulls,
  );

  return firestoreData;
}

class NsaborRecordDocumentEquality implements Equality<NsaborRecord> {
  const NsaborRecordDocumentEquality();

  @override
  bool equals(NsaborRecord? e1, NsaborRecord? e2) {
    return e1?.numero == e2?.numero;
  }

  @override
  int hash(NsaborRecord? e) => const ListEquality().hash([e?.numero]);

  @override
  bool isValidKey(Object? o) => o is NsaborRecord;
}
