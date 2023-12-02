import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

double subtotalProduto(
  double valor,
  int quantidade,
) {
  // Add your function code here!

  return valor * quantidade;
}

double subtotalSacola(
  List<ProdutoVendaRecord> todosPVENDA,
  List<DocumentReference> referenciaLocal,
) {
  double resultado = 0.0;
  for (var pvenda in todosPVENDA) {
    for (var local in referenciaLocal) {
      if (pvenda.reference == local) {
        resultado = resultado + double.parse(pvenda.valorSubtotal.toString());
      }
    }
  }

  return resultado;
}

dynamic itensToJson(
  List<ProdutoVendaRecord> produtosVenda,
  List<DocumentReference> pvendaLocais,
) {
  List meusprodutos = [];

  for (ProdutoVendaRecord produto in produtosVenda) {
    for (DocumentReference local in pvendaLocais) {
      if (produto.reference == local) {
        meusprodutos.add({
          "amount": produto.valorSubtotal * 100,
          "description": "descrição",
          "quantity": 1,
          "code": produto.reference.id
        });
      }
    }
  }

  // "items": [
  //   {
  //     "amount": 23,
  //     "description": "asd",
  //     "quantity": 2,
  //     "code": "234"
  //   }
  // ]

  print("itens: ${meusprodutos}");

  return meusprodutos;
}

double totalSacola(
  List<ProdutoVendaRecord> todosPVENDA,
  List<DocumentReference> referenciaLocal,
) {
  double resultado = 0.0;
  for (var pvenda in todosPVENDA) {
    for (var local in referenciaLocal) {
      if (pvenda.reference == local) {
        resultado = resultado + double.parse(pvenda.valorSubtotal.toString());
      }
    }
  }

  return resultado + 2.50;
}

int obterDia(DateTime date) {
  return date.day;
}

String obterMesCopy(DateTime date) {
  var meses = [
    'Janeiro',
    'Fevereiro',
    'Março',
    'Abril',
    'Maio',
    'Junho',
    'Julho',
    'Agosto',
    'Setembro',
    'Outubro',
    'Novembro',
    'Dezembro'
  ];

  return meses[date.month - 1];
}

bool existeItem(List<DocumentReference> localRefer) {
  var bool = null;

  if (localRefer.isNotEmpty) {
    bool = true;
  } else {
    bool = false;
  }

  return bool;
}

double valorParaStripe(double valor) {
  // Add your function code here!

  return valor * 100;
}

List<DocumentReference> listarRestaurantes(
  List<ProdutoVendaRecord> produtosVenda,
  List<DocumentReference> produtosVendaRef,
) {
  List<DocumentReference> restaurantes = [];

  for (var pv in produtosVenda) {
    if (produtosVendaRef.contains(pv.reference)) {
      restaurantes.add(pv.restaurante!);
    }
  }

  return restaurantes;
}

int obterAno(DateTime date) {
  return date.year;
}

dynamic recebedoresJSON(
  List<ProdutoVendaRecord> produtosVenda,
  List<DocumentReference> plocais,
) {
  List lista = [];
  for (var p in produtosVenda) {
    for (var local in plocais) {
      if (local == p.reference) {
        lista.add({
          "amount": p.pagamento.valor * 100,
          "recipient_id": p.pagamento.idrecebedor,
          'type': "flat"
        });
      }
    }
  }

  print("recebedores: ${lista}");

  return lista;
}

String? saudacao() {
  var hour = DateTime.now().hour;
  if (hour < 4) {
    return 'Vai dormir, ';
  }
  if (hour < 12) {
    return 'Bom dia, ';
  }
  if (hour < 17) {
    return 'Boa Tarde, ';
  }
  return 'Boa Noite, ';
}
