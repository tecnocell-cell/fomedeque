import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start mercado pago Group Code

class MercadoPagoGroup {
  static String baseUrl = 'https://api.mercadopago.com';
  static Map<String, String> headers = {};
  static CriarPreferenciaCall criarPreferenciaCall = CriarPreferenciaCall();
  static VerificarPagamentoCall verificarPagamentoCall =
      VerificarPagamentoCall();
}

class CriarPreferenciaCall {
  Future<ApiCallResponse> call({
    String? titulo = '',
    String? descricao = '',
    int? quantidade = 5,
    double? precoUnidade,
    String? emailComprador = '',
    String? accesstoken = '',
  }) async {
    final ffApiRequestBody = '''
{
  "items": [
    {
      "title": "${titulo}",
      "description": "${descricao}",
      "quantity": ${quantidade},
      "currency_id": "BRL",
      "unit_price": ${precoUnidade}
    }
  ],
  "payer": {
    "email": "${emailComprador}"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'criar preferencia',
      apiUrl: '${MercadoPagoGroup.baseUrl}/checkout/preferences',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${accesstoken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class VerificarPagamentoCall {
  Future<ApiCallResponse> call({
    String? id = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'verificar pagamento',
      apiUrl: '${MercadoPagoGroup.baseUrl}/v1/payments/${id}',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
        'Authorization':
            'Bearer TEST-5515903050397999-090111-942c72602a0c1cbb8c59acf10a7ea674-241597702',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
}

/// End mercado pago Group Code

/// Start pagarme Group Code

class PagarmeGroup {
  static String baseUrl = 'https://api.pagar.me/core/v5/';
  static Map<String, String> headers = {
    'accept': 'application/json',
    'content-type': 'application/json',
    'authorization': 'Basic suachavedeapi',
  };
  static PagarComSplitCall pagarComSplitCall = PagarComSplitCall();
}

class PagarComSplitCall {
  Future<ApiCallResponse> call({
    dynamic? itemsJson,
    String? nome = '',
    String? email = '',
    String? siglaEstado = '',
    String? cidade = '',
    String? cep = '',
    String? numeroCasa = '',
    String? rua = '',
    String? bairro = '',
    String? codigoUser = '',
    String? dataNascimento = '',
    String? cartao = '',
    String? nomeNoCartao = '',
    int? mesExpiracao,
    int? anoExp,
    String? cvv = '',
    int? parcelas,
    String? nomeNaFatura = '',
    String? codigoDoPedido = '',
    dynamic? splitJson,
  }) async {
    final items = _serializeJson(itemsJson);
    final split = _serializeJson(splitJson);
    final ffApiRequestBody = '''
{
  "items": ${items},
  "customer": {
    "address": {
      "country": "BR",
      "state": "${siglaEstado}",
      "city": "${cidade}",
      "zip_code": "${cep}",
      "line_1": "${numeroCasa}, ${rua}, ${bairro}"
    },
    "name": "${nome}",
    "email": "${email}",
    "code": "${codigoUser}",
    "birthdate": "${dataNascimento}"
  },
  "payments": [
    {
      "credit_card": {
        "card": {
          "billing_address": {
            "line_1": "${numeroCasa}, ${rua}, ${bairro}",
            "zip_code": "${cep}",
            "city": "${cidade}",
            "state": "${siglaEstado}",
            "country": "BR"
          },
          "number": "${cartao}",
          "holder_name": "${nomeNoCartao}",
          "exp_month": ${mesExpiracao},
          "exp_year": ${anoExp},
          "cvv": "${cvv}"
        },
        "installments": ${parcelas},
        "statement_descriptor": "${nomeNaFatura}"
      },
      "split": ${split},
      "payment_method": "credit_card"
    }
  ],
  "code": "${codigoDoPedido}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'pagar com split',
      apiUrl: '${PagarmeGroup.baseUrl}orders',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'content-type': 'application/json',
        'authorization': 'Basic suachavedeapi',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  dynamic chargeID(dynamic response) => getJsonField(
        response,
        r'''$.charges[:].status''',
      );
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.status''',
      );
  dynamic idPedido(dynamic response) => getJsonField(
        response,
        r'''$.id''',
      );
  dynamic erro(dynamic response) => getJsonField(
        response,
        r'''$.errors''',
      );
}

/// End pagarme Group Code

/// Start buscaCEP Group Code

class BuscaCEPGroup {
  static String baseUrl = 'viacep.com.br/ws/[cep]/json/';
  static Map<String, String> headers = {};
}

/// End buscaCEP Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
