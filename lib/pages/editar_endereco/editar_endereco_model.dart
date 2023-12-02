import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'editar_endereco_widget.dart' show EditarEnderecoWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarEnderecoModel extends FlutterFlowModel<EditarEnderecoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldCep widget.
  FocusNode? textFieldCepFocusNode;
  TextEditingController? textFieldCepController;
  String? Function(BuildContext, String?)? textFieldCepControllerValidator;
  // State field(s) for TextFieldRua widget.
  FocusNode? textFieldRuaFocusNode;
  TextEditingController? textFieldRuaController;
  String? Function(BuildContext, String?)? textFieldRuaControllerValidator;
  // State field(s) for TextFieldCepBairro widget.
  FocusNode? textFieldCepBairroFocusNode;
  TextEditingController? textFieldCepBairroController;
  String? Function(BuildContext, String?)?
      textFieldCepBairroControllerValidator;
  // State field(s) for TextFieldNumeroImovel widget.
  FocusNode? textFieldNumeroImovelFocusNode;
  TextEditingController? textFieldNumeroImovelController;
  String? Function(BuildContext, String?)?
      textFieldNumeroImovelControllerValidator;
  // State field(s) for TextFieldComplemento widget.
  FocusNode? textFieldComplementoFocusNode;
  TextEditingController? textFieldComplementoController;
  String? Function(BuildContext, String?)?
      textFieldComplementoControllerValidator;
  // State field(s) for TextFieldCidade widget.
  FocusNode? textFieldCidadeFocusNode;
  TextEditingController? textFieldCidadeController;
  String? Function(BuildContext, String?)? textFieldCidadeControllerValidator;
  // State field(s) for TextFieldEstado widget.
  FocusNode? textFieldEstadoFocusNode;
  TextEditingController? textFieldEstadoController;
  String? Function(BuildContext, String?)? textFieldEstadoControllerValidator;
  // State field(s) for TextFieldIdentificador widget.
  FocusNode? textFieldIdentificadorFocusNode;
  TextEditingController? textFieldIdentificadorController;
  String? Function(BuildContext, String?)?
      textFieldIdentificadorControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldCepFocusNode?.dispose();
    textFieldCepController?.dispose();

    textFieldRuaFocusNode?.dispose();
    textFieldRuaController?.dispose();

    textFieldCepBairroFocusNode?.dispose();
    textFieldCepBairroController?.dispose();

    textFieldNumeroImovelFocusNode?.dispose();
    textFieldNumeroImovelController?.dispose();

    textFieldComplementoFocusNode?.dispose();
    textFieldComplementoController?.dispose();

    textFieldCidadeFocusNode?.dispose();
    textFieldCidadeController?.dispose();

    textFieldEstadoFocusNode?.dispose();
    textFieldEstadoController?.dispose();

    textFieldIdentificadorFocusNode?.dispose();
    textFieldIdentificadorController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
