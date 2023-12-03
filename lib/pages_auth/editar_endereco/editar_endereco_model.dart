import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'editar_endereco_widget.dart' show EditarEnderecoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class EditarEnderecoModel extends FlutterFlowModel<EditarEnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TextCep widget.
  FocusNode? textCepFocusNode;
  TextEditingController? textCepController;
  final textCepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? textCepControllerValidator;
  // State field(s) for TextRua widget.
  FocusNode? textRuaFocusNode;
  TextEditingController? textRuaController;
  String? Function(BuildContext, String?)? textRuaControllerValidator;
  // State field(s) for TextBairro widget.
  FocusNode? textBairroFocusNode;
  TextEditingController? textBairroController;
  String? Function(BuildContext, String?)? textBairroControllerValidator;
  // State field(s) for TextNumero widget.
  FocusNode? textNumeroFocusNode;
  TextEditingController? textNumeroController;
  String? Function(BuildContext, String?)? textNumeroControllerValidator;
  // State field(s) for TextComplemento widget.
  FocusNode? textComplementoFocusNode;
  TextEditingController? textComplementoController;
  String? Function(BuildContext, String?)? textComplementoControllerValidator;
  // State field(s) for TextCidade widget.
  FocusNode? textCidadeFocusNode;
  TextEditingController? textCidadeController;
  String? Function(BuildContext, String?)? textCidadeControllerValidator;
  // State field(s) for TextEstado widget.
  FocusNode? textEstadoFocusNode;
  TextEditingController? textEstadoController;
  String? Function(BuildContext, String?)? textEstadoControllerValidator;
  // State field(s) for TextIdentificador widget.
  FocusNode? textIdentificadorFocusNode;
  TextEditingController? textIdentificadorController;
  String? Function(BuildContext, String?)? textIdentificadorControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textCepFocusNode?.dispose();
    textCepController?.dispose();

    textRuaFocusNode?.dispose();
    textRuaController?.dispose();

    textBairroFocusNode?.dispose();
    textBairroController?.dispose();

    textNumeroFocusNode?.dispose();
    textNumeroController?.dispose();

    textComplementoFocusNode?.dispose();
    textComplementoController?.dispose();

    textCidadeFocusNode?.dispose();
    textCidadeController?.dispose();

    textEstadoFocusNode?.dispose();
    textEstadoController?.dispose();

    textIdentificadorFocusNode?.dispose();
    textIdentificadorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
