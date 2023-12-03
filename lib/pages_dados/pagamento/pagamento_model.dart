import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'pagamento_widget.dart' show PagamentoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class PagamentoModel extends FlutterFlowModel<PagamentoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for nomecartao widget.
  FocusNode? nomecartaoFocusNode;
  TextEditingController? nomecartaoController;
  String? Function(BuildContext, String?)? nomecartaoControllerValidator;
  String? _nomecartaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for cartao widget.
  FocusNode? cartaoFocusNode;
  TextEditingController? cartaoController;
  final cartaoMask = MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)? cartaoControllerValidator;
  String? _cartaoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for cvv widget.
  FocusNode? cvvFocusNode;
  TextEditingController? cvvController;
  final cvvMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? cvvControllerValidator;
  String? _cvvControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for MES widget.
  FocusNode? mesFocusNode;
  TextEditingController? mesController;
  final mesMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? mesControllerValidator;
  String? _mesControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ANO widget.
  FocusNode? anoFocusNode;
  TextEditingController? anoController;
  final anoMask = MaskTextInputFormatter(mask: '####');
  String? Function(BuildContext, String?)? anoControllerValidator;
  String? _anoControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for parcelas widget.
  int? parcelasValue;
  FormFieldController<int>? parcelasValueController;
  // Stores action output result for [Backend Call - API (pagar com split)] action in Button widget.
  ApiCallResponse? pagamento;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nomecartaoControllerValidator = _nomecartaoControllerValidator;
    cartaoControllerValidator = _cartaoControllerValidator;
    cvvControllerValidator = _cvvControllerValidator;
    mesControllerValidator = _mesControllerValidator;
    anoControllerValidator = _anoControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    nomecartaoFocusNode?.dispose();
    nomecartaoController?.dispose();

    cartaoFocusNode?.dispose();
    cartaoController?.dispose();

    cvvFocusNode?.dispose();
    cvvController?.dispose();

    mesFocusNode?.dispose();
    mesController?.dispose();

    anoFocusNode?.dispose();
    anoController?.dispose();
  }

  /// Action blocks are added here.

  Future criarPagamentoNoBanco(BuildContext context) async {
    VendaRecord? compra;

    var vendaRecordReference = VendaRecord.collection.doc();
    await vendaRecordReference.set(createVendaRecordData(
      valorTotal: FFAppState().totalCompra,
      dataVenda: getCurrentTimestamp,
      usuario: currentUserReference,
      pedidoSendoPreparado: false,
      enviadoParaEntrega: false,
      pagamentoSucesso: true,
      entregaRealizada: false,
      dia: functions.obterDia(getCurrentTimestamp),
      mes: functions.obterMesCopy(getCurrentTimestamp),
      ano: functions.obterAno(getCurrentTimestamp),
    ));
    compra = VendaRecord.getDocumentFromData(
        createVendaRecordData(
          valorTotal: FFAppState().totalCompra,
          dataVenda: getCurrentTimestamp,
          usuario: currentUserReference,
          pedidoSendoPreparado: false,
          enviadoParaEntrega: false,
          pagamentoSucesso: true,
          entregaRealizada: false,
          dia: functions.obterDia(getCurrentTimestamp),
          mes: functions.obterMesCopy(getCurrentTimestamp),
          ano: functions.obterAno(getCurrentTimestamp),
        ),
        vendaRecordReference);

    await compra!.reference.update({
      ...mapToFirestore(
        {
          'produtoVenda': FFAppState().produtosVendaLOCAL,
        },
      ),
    });
    FFAppState().update(() {
      FFAppState().produtosVendaLOCAL = [];
    });

    context.pushNamed('pagamentoConcluido');
  }

  /// Additional helper methods are added here.
}
