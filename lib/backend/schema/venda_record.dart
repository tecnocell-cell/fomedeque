import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VendaRecord extends FirestoreRecord {
  VendaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "valorTotal" field.
  double? _valorTotal;
  double get valorTotal => _valorTotal ?? 0.0;
  bool hasValorTotal() => _valorTotal != null;

  // "dataVenda" field.
  DateTime? _dataVenda;
  DateTime? get dataVenda => _dataVenda;
  bool hasDataVenda() => _dataVenda != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "produtoVenda" field.
  List<DocumentReference>? _produtoVenda;
  List<DocumentReference> get produtoVenda => _produtoVenda ?? const [];
  bool hasProdutoVenda() => _produtoVenda != null;

  // "endereco" field.
  DocumentReference? _endereco;
  DocumentReference? get endereco => _endereco;
  bool hasEndereco() => _endereco != null;

  // "pedido_sendo_preparado" field.
  bool? _pedidoSendoPreparado;
  bool get pedidoSendoPreparado => _pedidoSendoPreparado ?? false;
  bool hasPedidoSendoPreparado() => _pedidoSendoPreparado != null;

  // "enviado_para_entrega" field.
  bool? _enviadoParaEntrega;
  bool get enviadoParaEntrega => _enviadoParaEntrega ?? false;
  bool hasEnviadoParaEntrega() => _enviadoParaEntrega != null;

  // "pagamento_sucesso" field.
  bool? _pagamentoSucesso;
  bool get pagamentoSucesso => _pagamentoSucesso ?? false;
  bool hasPagamentoSucesso() => _pagamentoSucesso != null;

  // "entrega_realizada" field.
  bool? _entregaRealizada;
  bool get entregaRealizada => _entregaRealizada ?? false;
  bool hasEntregaRealizada() => _entregaRealizada != null;

  // "restaurantes" field.
  List<DocumentReference>? _restaurantes;
  List<DocumentReference> get restaurantes => _restaurantes ?? const [];
  bool hasRestaurantes() => _restaurantes != null;

  // "id_pagamento" field.
  String? _idPagamento;
  String get idPagamento => _idPagamento ?? '';
  bool hasIdPagamento() => _idPagamento != null;

  // "dia" field.
  int? _dia;
  int get dia => _dia ?? 0;
  bool hasDia() => _dia != null;

  // "ano" field.
  int? _ano;
  int get ano => _ano ?? 0;
  bool hasAno() => _ano != null;

  // "mes" field.
  String? _mes;
  String get mes => _mes ?? '';
  bool hasMes() => _mes != null;

  // "pagamentos" field.
  List<PagamentoStruct>? _pagamentos;
  List<PagamentoStruct> get pagamentos => _pagamentos ?? const [];
  bool hasPagamentos() => _pagamentos != null;

  void _initializeFields() {
    _valorTotal = castToType<double>(snapshotData['valorTotal']);
    _dataVenda = snapshotData['dataVenda'] as DateTime?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _produtoVenda = getDataList(snapshotData['produtoVenda']);
    _endereco = snapshotData['endereco'] as DocumentReference?;
    _pedidoSendoPreparado = snapshotData['pedido_sendo_preparado'] as bool?;
    _enviadoParaEntrega = snapshotData['enviado_para_entrega'] as bool?;
    _pagamentoSucesso = snapshotData['pagamento_sucesso'] as bool?;
    _entregaRealizada = snapshotData['entrega_realizada'] as bool?;
    _restaurantes = getDataList(snapshotData['restaurantes']);
    _idPagamento = snapshotData['id_pagamento'] as String?;
    _dia = castToType<int>(snapshotData['dia']);
    _ano = castToType<int>(snapshotData['ano']);
    _mes = snapshotData['mes'] as String?;
    _pagamentos = getStructList(
      snapshotData['pagamentos'],
      PagamentoStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('venda');

  static Stream<VendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => VendaRecord.fromSnapshot(s));

  static Future<VendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => VendaRecord.fromSnapshot(s));

  static VendaRecord fromSnapshot(DocumentSnapshot snapshot) => VendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static VendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      VendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'VendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is VendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createVendaRecordData({
  double? valorTotal,
  DateTime? dataVenda,
  DocumentReference? usuario,
  DocumentReference? endereco,
  bool? pedidoSendoPreparado,
  bool? enviadoParaEntrega,
  bool? pagamentoSucesso,
  bool? entregaRealizada,
  String? idPagamento,
  int? dia,
  int? ano,
  String? mes,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'valorTotal': valorTotal,
      'dataVenda': dataVenda,
      'usuario': usuario,
      'endereco': endereco,
      'pedido_sendo_preparado': pedidoSendoPreparado,
      'enviado_para_entrega': enviadoParaEntrega,
      'pagamento_sucesso': pagamentoSucesso,
      'entrega_realizada': entregaRealizada,
      'id_pagamento': idPagamento,
      'dia': dia,
      'ano': ano,
      'mes': mes,
    }.withoutNulls,
  );

  return firestoreData;
}

class VendaRecordDocumentEquality implements Equality<VendaRecord> {
  const VendaRecordDocumentEquality();

  @override
  bool equals(VendaRecord? e1, VendaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.valorTotal == e2?.valorTotal &&
        e1?.dataVenda == e2?.dataVenda &&
        e1?.usuario == e2?.usuario &&
        listEquality.equals(e1?.produtoVenda, e2?.produtoVenda) &&
        e1?.endereco == e2?.endereco &&
        e1?.pedidoSendoPreparado == e2?.pedidoSendoPreparado &&
        e1?.enviadoParaEntrega == e2?.enviadoParaEntrega &&
        e1?.pagamentoSucesso == e2?.pagamentoSucesso &&
        e1?.entregaRealizada == e2?.entregaRealizada &&
        listEquality.equals(e1?.restaurantes, e2?.restaurantes) &&
        e1?.idPagamento == e2?.idPagamento &&
        e1?.dia == e2?.dia &&
        e1?.ano == e2?.ano &&
        e1?.mes == e2?.mes &&
        listEquality.equals(e1?.pagamentos, e2?.pagamentos);
  }

  @override
  int hash(VendaRecord? e) => const ListEquality().hash([
        e?.valorTotal,
        e?.dataVenda,
        e?.usuario,
        e?.produtoVenda,
        e?.endereco,
        e?.pedidoSendoPreparado,
        e?.enviadoParaEntrega,
        e?.pagamentoSucesso,
        e?.entregaRealizada,
        e?.restaurantes,
        e?.idPagamento,
        e?.dia,
        e?.ano,
        e?.mes,
        e?.pagamentos
      ]);

  @override
  bool isValidKey(Object? o) => o is VendaRecord;
}
