import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CuponsRecord extends FirestoreRecord {
  CuponsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "expiraEm" field.
  DateTime? _expiraEm;
  DateTime? get expiraEm => _expiraEm;
  bool hasExpiraEm() => _expiraEm != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  void _initializeFields() {
    _codigo = snapshotData['codigo'] as String?;
    _expiraEm = snapshotData['expiraEm'] as DateTime?;
    _valor = castToType<double>(snapshotData['valor']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cupons');

  static Stream<CuponsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CuponsRecord.fromSnapshot(s));

  static Future<CuponsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CuponsRecord.fromSnapshot(s));

  static CuponsRecord fromSnapshot(DocumentSnapshot snapshot) => CuponsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CuponsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CuponsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CuponsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CuponsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCuponsRecordData({
  String? codigo,
  DateTime? expiraEm,
  double? valor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'codigo': codigo,
      'expiraEm': expiraEm,
      'valor': valor,
    }.withoutNulls,
  );

  return firestoreData;
}

class CuponsRecordDocumentEquality implements Equality<CuponsRecord> {
  const CuponsRecordDocumentEquality();

  @override
  bool equals(CuponsRecord? e1, CuponsRecord? e2) {
    return e1?.codigo == e2?.codigo &&
        e1?.expiraEm == e2?.expiraEm &&
        e1?.valor == e2?.valor;
  }

  @override
  int hash(CuponsRecord? e) =>
      const ListEquality().hash([e?.codigo, e?.expiraEm, e?.valor]);

  @override
  bool isValidKey(Object? o) => o is CuponsRecord;
}
