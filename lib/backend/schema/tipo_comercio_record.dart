import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TipoComercioRecord extends FirestoreRecord {
  TipoComercioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tipo_comercio');

  static Stream<TipoComercioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TipoComercioRecord.fromSnapshot(s));

  static Future<TipoComercioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TipoComercioRecord.fromSnapshot(s));

  static TipoComercioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TipoComercioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TipoComercioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TipoComercioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TipoComercioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TipoComercioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTipoComercioRecordData({
  String? nome,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
    }.withoutNulls,
  );

  return firestoreData;
}

class TipoComercioRecordDocumentEquality
    implements Equality<TipoComercioRecord> {
  const TipoComercioRecordDocumentEquality();

  @override
  bool equals(TipoComercioRecord? e1, TipoComercioRecord? e2) {
    return e1?.nome == e2?.nome;
  }

  @override
  int hash(TipoComercioRecord? e) => const ListEquality().hash([e?.nome]);

  @override
  bool isValidKey(Object? o) => o is TipoComercioRecord;
}
