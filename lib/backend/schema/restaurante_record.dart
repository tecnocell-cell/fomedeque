import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestauranteRecord extends FirestoreRecord {
  RestauranteRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "tipoComercio" field.
  DocumentReference? _tipoComercio;
  DocumentReference? get tipoComercio => _tipoComercio;
  bool hasTipoComercio() => _tipoComercio != null;

  // "restauranteInfos" field.
  RestauranteINFOSStruct? _restauranteInfos;
  RestauranteINFOSStruct get restauranteInfos =>
      _restauranteInfos ?? RestauranteINFOSStruct();
  bool hasRestauranteInfos() => _restauranteInfos != null;

  // "dono" field.
  DocumentReference? _dono;
  DocumentReference? get dono => _dono;
  bool hasDono() => _dono != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _tipoComercio = snapshotData['tipoComercio'] as DocumentReference?;
    _restauranteInfos =
        RestauranteINFOSStruct.maybeFromMap(snapshotData['restauranteInfos']);
    _dono = snapshotData['dono'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('restaurante');

  static Stream<RestauranteRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RestauranteRecord.fromSnapshot(s));

  static Future<RestauranteRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RestauranteRecord.fromSnapshot(s));

  static RestauranteRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RestauranteRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RestauranteRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RestauranteRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RestauranteRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RestauranteRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRestauranteRecordData({
  String? nome,
  String? imagem,
  DocumentReference? tipoComercio,
  RestauranteINFOSStruct? restauranteInfos,
  DocumentReference? dono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'imagem': imagem,
      'tipoComercio': tipoComercio,
      'restauranteInfos': RestauranteINFOSStruct().toMap(),
      'dono': dono,
    }.withoutNulls,
  );

  // Handle nested data for "restauranteInfos" field.
  addRestauranteINFOSStructData(
      firestoreData, restauranteInfos, 'restauranteInfos');

  return firestoreData;
}

class RestauranteRecordDocumentEquality implements Equality<RestauranteRecord> {
  const RestauranteRecordDocumentEquality();

  @override
  bool equals(RestauranteRecord? e1, RestauranteRecord? e2) {
    return e1?.nome == e2?.nome &&
        e1?.imagem == e2?.imagem &&
        e1?.tipoComercio == e2?.tipoComercio &&
        e1?.restauranteInfos == e2?.restauranteInfos &&
        e1?.dono == e2?.dono;
  }

  @override
  int hash(RestauranteRecord? e) => const ListEquality().hash(
      [e?.nome, e?.imagem, e?.tipoComercio, e?.restauranteInfos, e?.dono]);

  @override
  bool isValidKey(Object? o) => o is RestauranteRecord;
}
