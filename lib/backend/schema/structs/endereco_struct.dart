// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EnderecoStruct extends FFFirebaseStruct {
  EnderecoStruct({
    String? cep,
    String? rua,
    String? bairro,
    String? cidade,
    String? estado,
    String? complemento,
    int? numero,
    String? tipoEndereco,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _cep = cep,
        _rua = rua,
        _bairro = bairro,
        _cidade = cidade,
        _estado = estado,
        _complemento = complemento,
        _numero = numero,
        _tipoEndereco = tipoEndereco,
        super(firestoreUtilData);

  // "cep" field.
  String? _cep;
  String get cep => _cep ?? '';
  set cep(String? val) => _cep = val;
  bool hasCep() => _cep != null;

  // "rua" field.
  String? _rua;
  String get rua => _rua ?? '';
  set rua(String? val) => _rua = val;
  bool hasRua() => _rua != null;

  // "bairro" field.
  String? _bairro;
  String get bairro => _bairro ?? '';
  set bairro(String? val) => _bairro = val;
  bool hasBairro() => _bairro != null;

  // "cidade" field.
  String? _cidade;
  String get cidade => _cidade ?? '';
  set cidade(String? val) => _cidade = val;
  bool hasCidade() => _cidade != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  set estado(String? val) => _estado = val;
  bool hasEstado() => _estado != null;

  // "complemento" field.
  String? _complemento;
  String get complemento => _complemento ?? '';
  set complemento(String? val) => _complemento = val;
  bool hasComplemento() => _complemento != null;

  // "numero" field.
  int? _numero;
  int get numero => _numero ?? 0;
  set numero(int? val) => _numero = val;
  void incrementNumero(int amount) => _numero = numero + amount;
  bool hasNumero() => _numero != null;

  // "tipoEndereco" field.
  String? _tipoEndereco;
  String get tipoEndereco => _tipoEndereco ?? '';
  set tipoEndereco(String? val) => _tipoEndereco = val;
  bool hasTipoEndereco() => _tipoEndereco != null;

  static EnderecoStruct fromMap(Map<String, dynamic> data) => EnderecoStruct(
        cep: data['cep'] as String?,
        rua: data['rua'] as String?,
        bairro: data['bairro'] as String?,
        cidade: data['cidade'] as String?,
        estado: data['estado'] as String?,
        complemento: data['complemento'] as String?,
        numero: castToType<int>(data['numero']),
        tipoEndereco: data['tipoEndereco'] as String?,
      );

  static EnderecoStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic> ? EnderecoStruct.fromMap(data) : null;

  Map<String, dynamic> toMap() => {
        'cep': _cep,
        'rua': _rua,
        'bairro': _bairro,
        'cidade': _cidade,
        'estado': _estado,
        'complemento': _complemento,
        'numero': _numero,
        'tipoEndereco': _tipoEndereco,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'cep': serializeParam(
          _cep,
          ParamType.String,
        ),
        'rua': serializeParam(
          _rua,
          ParamType.String,
        ),
        'bairro': serializeParam(
          _bairro,
          ParamType.String,
        ),
        'cidade': serializeParam(
          _cidade,
          ParamType.String,
        ),
        'estado': serializeParam(
          _estado,
          ParamType.String,
        ),
        'complemento': serializeParam(
          _complemento,
          ParamType.String,
        ),
        'numero': serializeParam(
          _numero,
          ParamType.int,
        ),
        'tipoEndereco': serializeParam(
          _tipoEndereco,
          ParamType.String,
        ),
      }.withoutNulls;

  static EnderecoStruct fromSerializableMap(Map<String, dynamic> data) =>
      EnderecoStruct(
        cep: deserializeParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        rua: deserializeParam(
          data['rua'],
          ParamType.String,
          false,
        ),
        bairro: deserializeParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        cidade: deserializeParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        estado: deserializeParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        complemento: deserializeParam(
          data['complemento'],
          ParamType.String,
          false,
        ),
        numero: deserializeParam(
          data['numero'],
          ParamType.int,
          false,
        ),
        tipoEndereco: deserializeParam(
          data['tipoEndereco'],
          ParamType.String,
          false,
        ),
      );

  static EnderecoStruct fromAlgoliaData(Map<String, dynamic> data) =>
      EnderecoStruct(
        cep: convertAlgoliaParam(
          data['cep'],
          ParamType.String,
          false,
        ),
        rua: convertAlgoliaParam(
          data['rua'],
          ParamType.String,
          false,
        ),
        bairro: convertAlgoliaParam(
          data['bairro'],
          ParamType.String,
          false,
        ),
        cidade: convertAlgoliaParam(
          data['cidade'],
          ParamType.String,
          false,
        ),
        estado: convertAlgoliaParam(
          data['estado'],
          ParamType.String,
          false,
        ),
        complemento: convertAlgoliaParam(
          data['complemento'],
          ParamType.String,
          false,
        ),
        numero: convertAlgoliaParam(
          data['numero'],
          ParamType.int,
          false,
        ),
        tipoEndereco: convertAlgoliaParam(
          data['tipoEndereco'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'EnderecoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is EnderecoStruct &&
        cep == other.cep &&
        rua == other.rua &&
        bairro == other.bairro &&
        cidade == other.cidade &&
        estado == other.estado &&
        complemento == other.complemento &&
        numero == other.numero &&
        tipoEndereco == other.tipoEndereco;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [cep, rua, bairro, cidade, estado, complemento, numero, tipoEndereco]);
}

EnderecoStruct createEnderecoStruct({
  String? cep,
  String? rua,
  String? bairro,
  String? cidade,
  String? estado,
  String? complemento,
  int? numero,
  String? tipoEndereco,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    EnderecoStruct(
      cep: cep,
      rua: rua,
      bairro: bairro,
      cidade: cidade,
      estado: estado,
      complemento: complemento,
      numero: numero,
      tipoEndereco: tipoEndereco,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

EnderecoStruct? updateEnderecoStruct(
  EnderecoStruct? endereco, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    endereco
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addEnderecoStructData(
  Map<String, dynamic> firestoreData,
  EnderecoStruct? endereco,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (endereco == null) {
    return;
  }
  if (endereco.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && endereco.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final enderecoData = getEnderecoFirestoreData(endereco, forFieldValue);
  final nestedData = enderecoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = endereco.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getEnderecoFirestoreData(
  EnderecoStruct? endereco, [
  bool forFieldValue = false,
]) {
  if (endereco == null) {
    return {};
  }
  final firestoreData = mapToFirestore(endereco.toMap());

  // Add any Firestore field values
  endereco.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getEnderecoListFirestoreData(
  List<EnderecoStruct>? enderecos,
) =>
    enderecos?.map((e) => getEnderecoFirestoreData(e, true)).toList() ?? [];
