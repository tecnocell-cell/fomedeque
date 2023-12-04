import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _produtosVendaLOCAL = prefs
              .getStringList('ff_produtosVendaLOCAL')
              ?.map((path) => path.ref)
              .toList() ??
          _produtosVendaLOCAL;
    });
    _safeInit(() {
      _totalCompra = prefs.getDouble('ff_totalCompra') ?? _totalCompra;
    });
    _safeInit(() {
      _restaurantesProdutos = prefs
              .getStringList('ff_restaurantesProdutos')
              ?.map((path) => path.ref)
              .toList() ??
          _restaurantesProdutos;
    });
    _safeInit(() {
      _meta = prefs.getDouble('ff_meta') ?? _meta;
    });
    _safeInit(() {
      _string = prefs.getString('ff_string') ?? _string;
    });
    _safeInit(() {
      _addCarrinho = prefs.getDouble('ff_addCarrinho') ?? _addCarrinho;
    });
    _safeInit(() {
      _taxaEntrega = prefs.getDouble('ff_taxaEntrega') ?? _taxaEntrega;
    });
    _safeInit(() {
      _PizzaIndex = prefs.getInt('ff_PizzaIndex') ?? _PizzaIndex;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _produtosVendaLOCAL = [];
  List<DocumentReference> get produtosVendaLOCAL => _produtosVendaLOCAL;
  set produtosVendaLOCAL(List<DocumentReference> _value) {
    _produtosVendaLOCAL = _value;
    prefs.setStringList(
        'ff_produtosVendaLOCAL', _value.map((x) => x.path).toList());
  }

  void addToProdutosVendaLOCAL(DocumentReference _value) {
    _produtosVendaLOCAL.add(_value);
    prefs.setStringList('ff_produtosVendaLOCAL',
        _produtosVendaLOCAL.map((x) => x.path).toList());
  }

  void removeFromProdutosVendaLOCAL(DocumentReference _value) {
    _produtosVendaLOCAL.remove(_value);
    prefs.setStringList('ff_produtosVendaLOCAL',
        _produtosVendaLOCAL.map((x) => x.path).toList());
  }

  void removeAtIndexFromProdutosVendaLOCAL(int _index) {
    _produtosVendaLOCAL.removeAt(_index);
    prefs.setStringList('ff_produtosVendaLOCAL',
        _produtosVendaLOCAL.map((x) => x.path).toList());
  }

  void updateProdutosVendaLOCALAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _produtosVendaLOCAL[_index] = updateFn(_produtosVendaLOCAL[_index]);
    prefs.setStringList('ff_produtosVendaLOCAL',
        _produtosVendaLOCAL.map((x) => x.path).toList());
  }

  void insertAtIndexInProdutosVendaLOCAL(int _index, DocumentReference _value) {
    _produtosVendaLOCAL.insert(_index, _value);
    prefs.setStringList('ff_produtosVendaLOCAL',
        _produtosVendaLOCAL.map((x) => x.path).toList());
  }

  double _totalCompra = 0.0;
  double get totalCompra => _totalCompra;
  set totalCompra(double _value) {
    _totalCompra = _value;
    prefs.setDouble('ff_totalCompra', _value);
  }

  List<DocumentReference> _restaurantesProdutos = [];
  List<DocumentReference> get restaurantesProdutos => _restaurantesProdutos;
  set restaurantesProdutos(List<DocumentReference> _value) {
    _restaurantesProdutos = _value;
    prefs.setStringList(
        'ff_restaurantesProdutos', _value.map((x) => x.path).toList());
  }

  void addToRestaurantesProdutos(DocumentReference _value) {
    _restaurantesProdutos.add(_value);
    prefs.setStringList('ff_restaurantesProdutos',
        _restaurantesProdutos.map((x) => x.path).toList());
  }

  void removeFromRestaurantesProdutos(DocumentReference _value) {
    _restaurantesProdutos.remove(_value);
    prefs.setStringList('ff_restaurantesProdutos',
        _restaurantesProdutos.map((x) => x.path).toList());
  }

  void removeAtIndexFromRestaurantesProdutos(int _index) {
    _restaurantesProdutos.removeAt(_index);
    prefs.setStringList('ff_restaurantesProdutos',
        _restaurantesProdutos.map((x) => x.path).toList());
  }

  void updateRestaurantesProdutosAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _restaurantesProdutos[_index] = updateFn(_restaurantesProdutos[_index]);
    prefs.setStringList('ff_restaurantesProdutos',
        _restaurantesProdutos.map((x) => x.path).toList());
  }

  void insertAtIndexInRestaurantesProdutos(
      int _index, DocumentReference _value) {
    _restaurantesProdutos.insert(_index, _value);
    prefs.setStringList('ff_restaurantesProdutos',
        _restaurantesProdutos.map((x) => x.path).toList());
  }

  double _meta = 300;
  double get meta => _meta;
  set meta(double _value) {
    _meta = _value;
    prefs.setDouble('ff_meta', _value);
  }

  String _string = '';
  String get string => _string;
  set string(String _value) {
    _string = _value;
    prefs.setString('ff_string', _value);
  }

  double _cupomValor = 0;
  double get cupomValor => _cupomValor;
  set cupomValor(double _value) {
    _cupomValor = _value;
  }

  EnderecoStruct _enderecoUsuarioRef = EnderecoStruct();
  EnderecoStruct get enderecoUsuarioRef => _enderecoUsuarioRef;
  set enderecoUsuarioRef(EnderecoStruct _value) {
    _enderecoUsuarioRef = _value;
  }

  void updateEnderecoUsuarioRefStruct(Function(EnderecoStruct) updateFn) {
    updateFn(_enderecoUsuarioRef);
  }

  bool _Status = false;
  bool get Status => _Status;
  set Status(bool _value) {
    _Status = _value;
  }

  double _addCarrinho = 0.0;
  double get addCarrinho => _addCarrinho;
  set addCarrinho(double _value) {
    _addCarrinho = _value;
    prefs.setDouble('ff_addCarrinho', _value);
  }

  double _taxaEntrega = 0.0;
  double get taxaEntrega => _taxaEntrega;
  set taxaEntrega(double _value) {
    _taxaEntrega = _value;
    prefs.setDouble('ff_taxaEntrega', _value);
  }

  bool _addToCarrinho = false;
  bool get addToCarrinho => _addToCarrinho;
  set addToCarrinho(bool _value) {
    _addToCarrinho = _value;
  }

  int _PizzaIndex = 0;
  int get PizzaIndex => _PizzaIndex;
  set PizzaIndex(int _value) {
    _PizzaIndex = _value;
    prefs.setInt('ff_PizzaIndex', _value);
  }

  bool _OptionSedid = false;
  bool get OptionSedid => _OptionSedid;
  set OptionSedid(bool _value) {
    _OptionSedid = _value;
  }

  bool _addFavorito = false;
  bool get addFavorito => _addFavorito;
  set addFavorito(bool _value) {
    _addFavorito = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
