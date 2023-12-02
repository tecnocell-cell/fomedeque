// ignore_for_file: unnecessary_getters_setters
import '/backend/algolia/serialization_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RestauranteINFOSStruct extends FFFirebaseStruct {
  RestauranteINFOSStruct({
    DocumentReference? restauranteRef,
    String? nomeRecebedor,
    String? documento,
    bool? isCPF,
    String? nomeContaBancaria,
    String? codigoBanco,
    String? numeroAgencia,
    String? digitoValidadorAgencia,
    String? numeroConta,
    String? digitoValidadorConta,
    String? tipoDaConta,
    String? idRecebedor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _restauranteRef = restauranteRef,
        _nomeRecebedor = nomeRecebedor,
        _documento = documento,
        _isCPF = isCPF,
        _nomeContaBancaria = nomeContaBancaria,
        _codigoBanco = codigoBanco,
        _numeroAgencia = numeroAgencia,
        _digitoValidadorAgencia = digitoValidadorAgencia,
        _numeroConta = numeroConta,
        _digitoValidadorConta = digitoValidadorConta,
        _tipoDaConta = tipoDaConta,
        _idRecebedor = idRecebedor,
        super(firestoreUtilData);

  // "restauranteRef" field.
  DocumentReference? _restauranteRef;
  DocumentReference? get restauranteRef => _restauranteRef;
  set restauranteRef(DocumentReference? val) => _restauranteRef = val;
  bool hasRestauranteRef() => _restauranteRef != null;

  // "nome_recebedor" field.
  String? _nomeRecebedor;
  String get nomeRecebedor => _nomeRecebedor ?? '';
  set nomeRecebedor(String? val) => _nomeRecebedor = val;
  bool hasNomeRecebedor() => _nomeRecebedor != null;

  // "documento" field.
  String? _documento;
  String get documento => _documento ?? '';
  set documento(String? val) => _documento = val;
  bool hasDocumento() => _documento != null;

  // "isCPF" field.
  bool? _isCPF;
  bool get isCPF => _isCPF ?? false;
  set isCPF(bool? val) => _isCPF = val;
  bool hasIsCPF() => _isCPF != null;

  // "nome_conta_bancaria" field.
  String? _nomeContaBancaria;
  String get nomeContaBancaria => _nomeContaBancaria ?? '';
  set nomeContaBancaria(String? val) => _nomeContaBancaria = val;
  bool hasNomeContaBancaria() => _nomeContaBancaria != null;

  // "codigo_banco" field.
  String? _codigoBanco;
  String get codigoBanco => _codigoBanco ?? '';
  set codigoBanco(String? val) => _codigoBanco = val;
  bool hasCodigoBanco() => _codigoBanco != null;

  // "numero_agencia" field.
  String? _numeroAgencia;
  String get numeroAgencia => _numeroAgencia ?? '';
  set numeroAgencia(String? val) => _numeroAgencia = val;
  bool hasNumeroAgencia() => _numeroAgencia != null;

  // "digito_validador_agencia" field.
  String? _digitoValidadorAgencia;
  String get digitoValidadorAgencia => _digitoValidadorAgencia ?? '';
  set digitoValidadorAgencia(String? val) => _digitoValidadorAgencia = val;
  bool hasDigitoValidadorAgencia() => _digitoValidadorAgencia != null;

  // "numero_conta" field.
  String? _numeroConta;
  String get numeroConta => _numeroConta ?? '';
  set numeroConta(String? val) => _numeroConta = val;
  bool hasNumeroConta() => _numeroConta != null;

  // "digito_validador_conta" field.
  String? _digitoValidadorConta;
  String get digitoValidadorConta => _digitoValidadorConta ?? '';
  set digitoValidadorConta(String? val) => _digitoValidadorConta = val;
  bool hasDigitoValidadorConta() => _digitoValidadorConta != null;

  // "tipo_da_conta" field.
  String? _tipoDaConta;
  String get tipoDaConta => _tipoDaConta ?? '';
  set tipoDaConta(String? val) => _tipoDaConta = val;
  bool hasTipoDaConta() => _tipoDaConta != null;

  // "id_recebedor" field.
  String? _idRecebedor;
  String get idRecebedor => _idRecebedor ?? '';
  set idRecebedor(String? val) => _idRecebedor = val;
  bool hasIdRecebedor() => _idRecebedor != null;

  static RestauranteINFOSStruct fromMap(Map<String, dynamic> data) =>
      RestauranteINFOSStruct(
        restauranteRef: data['restauranteRef'] as DocumentReference?,
        nomeRecebedor: data['nome_recebedor'] as String?,
        documento: data['documento'] as String?,
        isCPF: data['isCPF'] as bool?,
        nomeContaBancaria: data['nome_conta_bancaria'] as String?,
        codigoBanco: data['codigo_banco'] as String?,
        numeroAgencia: data['numero_agencia'] as String?,
        digitoValidadorAgencia: data['digito_validador_agencia'] as String?,
        numeroConta: data['numero_conta'] as String?,
        digitoValidadorConta: data['digito_validador_conta'] as String?,
        tipoDaConta: data['tipo_da_conta'] as String?,
        idRecebedor: data['id_recebedor'] as String?,
      );

  static RestauranteINFOSStruct? maybeFromMap(dynamic data) =>
      data is Map<String, dynamic>
          ? RestauranteINFOSStruct.fromMap(data)
          : null;

  Map<String, dynamic> toMap() => {
        'restauranteRef': _restauranteRef,
        'nome_recebedor': _nomeRecebedor,
        'documento': _documento,
        'isCPF': _isCPF,
        'nome_conta_bancaria': _nomeContaBancaria,
        'codigo_banco': _codigoBanco,
        'numero_agencia': _numeroAgencia,
        'digito_validador_agencia': _digitoValidadorAgencia,
        'numero_conta': _numeroConta,
        'digito_validador_conta': _digitoValidadorConta,
        'tipo_da_conta': _tipoDaConta,
        'id_recebedor': _idRecebedor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'restauranteRef': serializeParam(
          _restauranteRef,
          ParamType.DocumentReference,
        ),
        'nome_recebedor': serializeParam(
          _nomeRecebedor,
          ParamType.String,
        ),
        'documento': serializeParam(
          _documento,
          ParamType.String,
        ),
        'isCPF': serializeParam(
          _isCPF,
          ParamType.bool,
        ),
        'nome_conta_bancaria': serializeParam(
          _nomeContaBancaria,
          ParamType.String,
        ),
        'codigo_banco': serializeParam(
          _codigoBanco,
          ParamType.String,
        ),
        'numero_agencia': serializeParam(
          _numeroAgencia,
          ParamType.String,
        ),
        'digito_validador_agencia': serializeParam(
          _digitoValidadorAgencia,
          ParamType.String,
        ),
        'numero_conta': serializeParam(
          _numeroConta,
          ParamType.String,
        ),
        'digito_validador_conta': serializeParam(
          _digitoValidadorConta,
          ParamType.String,
        ),
        'tipo_da_conta': serializeParam(
          _tipoDaConta,
          ParamType.String,
        ),
        'id_recebedor': serializeParam(
          _idRecebedor,
          ParamType.String,
        ),
      }.withoutNulls;

  static RestauranteINFOSStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      RestauranteINFOSStruct(
        restauranteRef: deserializeParam(
          data['restauranteRef'],
          ParamType.DocumentReference,
          false,
          collectionNamePath: ['restaurante'],
        ),
        nomeRecebedor: deserializeParam(
          data['nome_recebedor'],
          ParamType.String,
          false,
        ),
        documento: deserializeParam(
          data['documento'],
          ParamType.String,
          false,
        ),
        isCPF: deserializeParam(
          data['isCPF'],
          ParamType.bool,
          false,
        ),
        nomeContaBancaria: deserializeParam(
          data['nome_conta_bancaria'],
          ParamType.String,
          false,
        ),
        codigoBanco: deserializeParam(
          data['codigo_banco'],
          ParamType.String,
          false,
        ),
        numeroAgencia: deserializeParam(
          data['numero_agencia'],
          ParamType.String,
          false,
        ),
        digitoValidadorAgencia: deserializeParam(
          data['digito_validador_agencia'],
          ParamType.String,
          false,
        ),
        numeroConta: deserializeParam(
          data['numero_conta'],
          ParamType.String,
          false,
        ),
        digitoValidadorConta: deserializeParam(
          data['digito_validador_conta'],
          ParamType.String,
          false,
        ),
        tipoDaConta: deserializeParam(
          data['tipo_da_conta'],
          ParamType.String,
          false,
        ),
        idRecebedor: deserializeParam(
          data['id_recebedor'],
          ParamType.String,
          false,
        ),
      );

  static RestauranteINFOSStruct fromAlgoliaData(Map<String, dynamic> data) =>
      RestauranteINFOSStruct(
        restauranteRef: convertAlgoliaParam(
          data['restauranteRef'],
          ParamType.DocumentReference,
          false,
        ),
        nomeRecebedor: convertAlgoliaParam(
          data['nome_recebedor'],
          ParamType.String,
          false,
        ),
        documento: convertAlgoliaParam(
          data['documento'],
          ParamType.String,
          false,
        ),
        isCPF: convertAlgoliaParam(
          data['isCPF'],
          ParamType.bool,
          false,
        ),
        nomeContaBancaria: convertAlgoliaParam(
          data['nome_conta_bancaria'],
          ParamType.String,
          false,
        ),
        codigoBanco: convertAlgoliaParam(
          data['codigo_banco'],
          ParamType.String,
          false,
        ),
        numeroAgencia: convertAlgoliaParam(
          data['numero_agencia'],
          ParamType.String,
          false,
        ),
        digitoValidadorAgencia: convertAlgoliaParam(
          data['digito_validador_agencia'],
          ParamType.String,
          false,
        ),
        numeroConta: convertAlgoliaParam(
          data['numero_conta'],
          ParamType.String,
          false,
        ),
        digitoValidadorConta: convertAlgoliaParam(
          data['digito_validador_conta'],
          ParamType.String,
          false,
        ),
        tipoDaConta: convertAlgoliaParam(
          data['tipo_da_conta'],
          ParamType.String,
          false,
        ),
        idRecebedor: convertAlgoliaParam(
          data['id_recebedor'],
          ParamType.String,
          false,
        ),
        firestoreUtilData: FirestoreUtilData(
          clearUnsetFields: false,
          create: true,
        ),
      );

  @override
  String toString() => 'RestauranteINFOSStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RestauranteINFOSStruct &&
        restauranteRef == other.restauranteRef &&
        nomeRecebedor == other.nomeRecebedor &&
        documento == other.documento &&
        isCPF == other.isCPF &&
        nomeContaBancaria == other.nomeContaBancaria &&
        codigoBanco == other.codigoBanco &&
        numeroAgencia == other.numeroAgencia &&
        digitoValidadorAgencia == other.digitoValidadorAgencia &&
        numeroConta == other.numeroConta &&
        digitoValidadorConta == other.digitoValidadorConta &&
        tipoDaConta == other.tipoDaConta &&
        idRecebedor == other.idRecebedor;
  }

  @override
  int get hashCode => const ListEquality().hash([
        restauranteRef,
        nomeRecebedor,
        documento,
        isCPF,
        nomeContaBancaria,
        codigoBanco,
        numeroAgencia,
        digitoValidadorAgencia,
        numeroConta,
        digitoValidadorConta,
        tipoDaConta,
        idRecebedor
      ]);
}

RestauranteINFOSStruct createRestauranteINFOSStruct({
  DocumentReference? restauranteRef,
  String? nomeRecebedor,
  String? documento,
  bool? isCPF,
  String? nomeContaBancaria,
  String? codigoBanco,
  String? numeroAgencia,
  String? digitoValidadorAgencia,
  String? numeroConta,
  String? digitoValidadorConta,
  String? tipoDaConta,
  String? idRecebedor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RestauranteINFOSStruct(
      restauranteRef: restauranteRef,
      nomeRecebedor: nomeRecebedor,
      documento: documento,
      isCPF: isCPF,
      nomeContaBancaria: nomeContaBancaria,
      codigoBanco: codigoBanco,
      numeroAgencia: numeroAgencia,
      digitoValidadorAgencia: digitoValidadorAgencia,
      numeroConta: numeroConta,
      digitoValidadorConta: digitoValidadorConta,
      tipoDaConta: tipoDaConta,
      idRecebedor: idRecebedor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RestauranteINFOSStruct? updateRestauranteINFOSStruct(
  RestauranteINFOSStruct? restauranteINFOS, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    restauranteINFOS
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRestauranteINFOSStructData(
  Map<String, dynamic> firestoreData,
  RestauranteINFOSStruct? restauranteINFOS,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (restauranteINFOS == null) {
    return;
  }
  if (restauranteINFOS.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && restauranteINFOS.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final restauranteINFOSData =
      getRestauranteINFOSFirestoreData(restauranteINFOS, forFieldValue);
  final nestedData =
      restauranteINFOSData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = restauranteINFOS.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRestauranteINFOSFirestoreData(
  RestauranteINFOSStruct? restauranteINFOS, [
  bool forFieldValue = false,
]) {
  if (restauranteINFOS == null) {
    return {};
  }
  final firestoreData = mapToFirestore(restauranteINFOS.toMap());

  // Add any Firestore field values
  restauranteINFOS.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRestauranteINFOSListFirestoreData(
  List<RestauranteINFOSStruct>? restauranteINFOSs,
) =>
    restauranteINFOSs
        ?.map((e) => getRestauranteINFOSFirestoreData(e, true))
        .toList() ??
    [];
