import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnderecoRecord extends FirestoreRecord {
  EnderecoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  bool hasRua() => _rua != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  bool hasBairro() => _bairro != null;

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  bool hasCep() => _cep != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  bool hasComplemento() => _complemento != null;

  // "numero" field.
  String? _numero;
  String get numero => _numero ?? '';
  bool hasNumero() => _numero != null;

  // "identificador" field.
  String? _identificador;
  String get identificador => _identificador ?? '';
  bool hasIdentificador() => _identificador != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  void _initializeFields() {
    _rua = snapshotData['rua'] as String?;
    _bairro = snapshotData['bairro'] as String?;
    _cep = snapshotData['cep'] as String?;
    _cidade = snapshotData['cidade'] as String?;
    _estado = snapshotData['estado'] as String?;
    _complemento = snapshotData['complemento'] as String?;
    _numero = snapshotData['numero'] as String?;
    _identificador = snapshotData['identificador'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('endereco');

  static Stream<EnderecoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EnderecoRecord.fromSnapshot(s));

  static Future<EnderecoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EnderecoRecord.fromSnapshot(s));

  static EnderecoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EnderecoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EnderecoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EnderecoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EnderecoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EnderecoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEnderecoRecordData({
  String? rua,
  String? bairro,
  String? cep,
  String? cidade,
  String? estado,
  String? complemento,
  String? numero,
  String? identificador,
  DocumentReference? usuario,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rua': rua,
      'bairro': bairro,
      'cep': cep,
      'cidade': cidade,
      'estado': estado,
      'complemento': complemento,
      'numero': numero,
      'identificador': identificador,
      'usuario': usuario,
    }.withoutNulls,
  );

  return firestoreData;
}

class EnderecoRecordDocumentEquality implements Equality<EnderecoRecord> {
  const EnderecoRecordDocumentEquality();

  @override
  bool equals(EnderecoRecord? e1, EnderecoRecord? e2) {
    return e1?.rua == e2?.rua &&
        e1?.bairro == e2?.bairro &&
        e1?.cep == e2?.cep &&
        e1?.cidade == e2?.cidade &&
        e1?.estado == e2?.estado &&
        e1?.complemento == e2?.complemento &&
        e1?.numero == e2?.numero &&
        e1?.identificador == e2?.identificador &&
        e1?.usuario == e2?.usuario;
  }

  @override
  int hash(EnderecoRecord? e) => const ListEquality().hash([
        e?.rua,
        e?.bairro,
        e?.cep,
        e?.cidade,
        e?.estado,
        e?.complemento,
        e?.numero,
        e?.identificador,
        e?.usuario
      ]);

  @override
  bool isValidKey(Object? o) => o is EnderecoRecord;
}
