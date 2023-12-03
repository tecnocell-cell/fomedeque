import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/add_endereco_entrega/add_endereco_entrega_widget.dart';
import '/components/sacola_vazia/sacola_vazia_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'sacola_widget.dart' show SacolaWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SacolaModel extends FlutterFlowModel<SacolaWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextFieldCUPOM widget.
  FocusNode? textFieldCUPOMFocusNode;
  TextEditingController? textFieldCUPOMController;
  String? Function(BuildContext, String?)? textFieldCUPOMControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  CuponsRecord? cupomaction;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    textFieldCUPOMFocusNode?.dispose();
    textFieldCUPOMController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
