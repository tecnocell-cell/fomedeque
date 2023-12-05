import 'dart:async';

import 'package:from_css_color/from_css_color.dart';
import '/backend/algolia/serialization_util.dart';
import '/backend/algolia/algolia_manager.dart';
import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProdutoRecord extends FirestoreRecord {
  ProdutoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "valor" field.
  double? _valor;
  double get valor => _valor ?? 0.0;
  bool hasValor() => _valor != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "imagem" field.
  String? _imagem;
  String get imagem => _imagem ?? '';
  bool hasImagem() => _imagem != null;

  // "restaurante" field.
  DocumentReference? _restaurante;
  DocumentReference? get restaurante => _restaurante;
  bool hasRestaurante() => _restaurante != null;

  // "isActive" field.
  bool? _isActive;
  bool get isActive => _isActive ?? false;
  bool hasIsActive() => _isActive != null;

  // "isComposto" field.
  bool? _isComposto;
  bool get isComposto => _isComposto ?? false;
  bool hasIsComposto() => _isComposto != null;

  // "sabor" field.
  String? _sabor;
  String get sabor => _sabor ?? '';
  bool hasSabor() => _sabor != null;

  // "numeroSabor" field.
  DocumentReference? _numeroSabor;
  DocumentReference? get numeroSabor => _numeroSabor;
  bool hasNumeroSabor() => _numeroSabor != null;

  // "categoria" field.
  List<String>? _categoria;
  List<String> get categoria => _categoria ?? const [];
  bool hasCategoria() => _categoria != null;

  void _initializeFields() {
    _nome = snapshotData['nome'] as String?;
    _valor = castToType<double>(snapshotData['valor']);
    _descricao = snapshotData['descricao'] as String?;
    _imagem = snapshotData['imagem'] as String?;
    _restaurante = snapshotData['restaurante'] as DocumentReference?;
    _isActive = snapshotData['isActive'] as bool?;
    _isComposto = snapshotData['isComposto'] as bool?;
    _sabor = snapshotData['sabor'] as String?;
    _numeroSabor = snapshotData['numeroSabor'] as DocumentReference?;
    _categoria = getDataList(snapshotData['categoria']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('produto');

  static Stream<ProdutoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProdutoRecord.fromSnapshot(s));

  static Future<ProdutoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProdutoRecord.fromSnapshot(s));

  static ProdutoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProdutoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProdutoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProdutoRecord._(reference, mapFromFirestore(data));

  static ProdutoRecord fromAlgolia(AlgoliaObjectSnapshot snapshot) =>
      ProdutoRecord.getDocumentFromData(
        {
          'nome': snapshot.data['nome'],
          'valor': convertAlgoliaParam(
            snapshot.data['valor'],
            ParamType.double,
            false,
          ),
          'descricao': snapshot.data['descricao'],
          'imagem': snapshot.data['imagem'],
          'restaurante': convertAlgoliaParam(
            snapshot.data['restaurante'],
            ParamType.DocumentReference,
            false,
          ),
          'isActive': snapshot.data['isActive'],
          'isComposto': snapshot.data['isComposto'],
          'sabor': snapshot.data['sabor'],
          'numeroSabor': convertAlgoliaParam(
            snapshot.data['numeroSabor'],
            ParamType.DocumentReference,
            false,
          ),
          'categoria': safeGet(
            () => snapshot.data['categoria'].toList(),
          ),
        },
        ProdutoRecord.collection.doc(snapshot.objectID),
      );

  static Future<List<ProdutoRecord>> search({
    String? term,
    FutureOr<LatLng>? location,
    int? maxResults,
    double? searchRadiusMeters,
    bool useCache = false,
  }) =>
      FFAlgoliaManager.instance
          .algoliaQuery(
            index: 'produto',
            term: term,
            maxResults: maxResults,
            location: location,
            searchRadiusMeters: searchRadiusMeters,
            useCache: useCache,
          )
          .then((r) => r.map(fromAlgolia).toList());

  @override
  String toString() =>
      'ProdutoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProdutoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProdutoRecordData({
  String? nome,
  double? valor,
  String? descricao,
  String? imagem,
  DocumentReference? restaurante,
  bool? isActive,
  bool? isComposto,
  String? sabor,
  DocumentReference? numeroSabor,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'valor': valor,
      'descricao': descricao,
      'imagem': imagem,
      'restaurante': restaurante,
      'isActive': isActive,
      'isComposto': isComposto,
      'sabor': sabor,
      'numeroSabor': numeroSabor,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProdutoRecordDocumentEquality implements Equality<ProdutoRecord> {
  const ProdutoRecordDocumentEquality();

  @override
  bool equals(ProdutoRecord? e1, ProdutoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.nome == e2?.nome &&
        e1?.valor == e2?.valor &&
        e1?.descricao == e2?.descricao &&
        e1?.imagem == e2?.imagem &&
        e1?.restaurante == e2?.restaurante &&
        e1?.isActive == e2?.isActive &&
        e1?.isComposto == e2?.isComposto &&
        e1?.sabor == e2?.sabor &&
        e1?.numeroSabor == e2?.numeroSabor &&
        listEquality.equals(e1?.categoria, e2?.categoria);
  }

  @override
  int hash(ProdutoRecord? e) => const ListEquality().hash([
        e?.nome,
        e?.valor,
        e?.descricao,
        e?.imagem,
        e?.restaurante,
        e?.isActive,
        e?.isComposto,
        e?.sabor,
        e?.numeroSabor,
        e?.categoria
      ]);

  @override
  bool isValidKey(Object? o) => o is ProdutoRecord;
}
