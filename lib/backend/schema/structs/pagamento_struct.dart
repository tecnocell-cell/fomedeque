// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PagamentoStruct extends FFFirebaseStruct {
  PagamentoStruct({
    String? idrecebedor,
    double? valor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _idrecebedor = idrecebedor,
        _valor = valor,
        super(firestoreUtilData);

  // "idrecebedor" field.
  String? _idrecebedor;
  String get idrecebedor => _idrecebedor ?? '';
  set idrecebedor(String? val) => _idrecebedor = val;
  bool hasIdrecebedor() => _idrecebedor != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  set valor(double? val) => _valor = val;
  void incrementValor(double amount) => _valor = valor + amount;
  bool hasValor() => _valor != null;

  static PagamentoStruct fromMap(Map<String, dynamic> data) => PagamentoStruct(
        idrecebedor: data['idrecebedor'] as String?,
        valor: castToType<double>(data['valor']),
      );

  static PagamentoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? PagamentoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'idrecebedor': _idrecebedor,
        'valor': _valor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'idrecebedor': serializeParam(
          _idrecebedor,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.double,
        ),
      }.withoutNulls;

  static PagamentoStruct fromSerializableMap(Map<String, dynamic> data) =>
      PagamentoStruct(
        idrecebedor: deserializeParam(
          data['idrecebedor'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.double,
          false,
        ),
      );

  static PagamentoStruct fromAlgoliaData(Map<String, dynamic> data) =>
      PagamentoStruct(
        idrecebedor: convertAlgoliaParam(
          data['idrecebedor'],
          ParamType.String,
          false,
        ),
        valor: convertAlgoliaParam(
          data['valor'],
          ParamType.double,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'PagamentoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PagamentoStruct &&
        idrecebedor == other.idrecebedor &&
        valor == other.valor;
  }

  @override
  int get hashCode => const ListEquality().hash([idrecebedor, valor]);
}

PagamentoStruct createPagamentoStruct({
  String? idrecebedor,
  double? valor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PagamentoStruct(
      idrecebedor: idrecebedor,
      valor: valor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PagamentoStruct? updatePagamentoStruct(
  PagamentoStruct? pagamento, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    pagamento
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPagamentoStructData(
  Map<String, dynamic> firestoreData,
  PagamentoStruct? pagamento,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (pagamento == null) {
    return;
  }
  if (pagamento.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && pagamento.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final pagamentoData = getPagamentoFirestoreData(pagamento, forFieldValue);
  final nestedData = pagamentoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = pagamento.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPagamentoFirestoreData(
  PagamentoStruct? pagamento, [
  bool forFieldValue = false,
]) {
  if (pagamento == null) {
    return {};
  }
  final firestoreData = mapToFirestore(pagamento.toMap());

  // Add any Firestore field values
  pagamento.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPagamentoListFirestoreData(
  List<PagamentoStruct>? pagamentos,
) =>
    pagamentos?.map((e) => getPagamentoFirestoreData(e, true)).toList() ?? [];
