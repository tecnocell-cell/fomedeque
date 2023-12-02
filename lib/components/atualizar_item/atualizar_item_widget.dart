import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'atualizar_item_model.dart';
export 'atualizar_item_model.dart';

class AtualizarItemWidget extends StatefulWidget {
  const AtualizarItemWidget({
    Key? key,
    this.produtoComponente,
    this.produtoVendaComponente,
  }) : super(key: key);

  final DocumentReference? produtoComponente;
  final DocumentReference? produtoVendaComponente;

  @override
  _AtualizarItemWidgetState createState() => _AtualizarItemWidgetState();
}

class _AtualizarItemWidgetState extends State<AtualizarItemWidget> {
  late AtualizarItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AtualizarItemModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<ProdutoVendaRecord>(
      stream: ProdutoVendaRecord.getDocument(widget.produtoVendaComponente!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        final columnProdutoVendaRecord = snapshot.data!;
        return Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: StreamBuilder<ProdutoRecord>(
                stream: ProdutoRecord.getDocument(
                    columnProdutoVendaRecord.produto!),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final rowProdutoRecord = snapshot.data!;
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        rowProdutoRecord.nome,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Open Sans',
                              fontSize: 20.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Atualizar item da sacola',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          fontSize: 18.0,
                        ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                    child: Material(
                      color: Colors.transparent,
                      elevation: 5.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Container(
                        width: 110.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                          shape: BoxShape.rectangle,
                          border: Border.all(
                            color: Color(0xFFD6D6D6),
                            width: 1.0,
                          ),
                        ),
                        child: FlutterFlowCountController(
                          decrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.minus,
                            color: enabled
                                ? FlutterFlowTheme.of(context).tertiary
                                : Color(0xFFEEEEEE),
                            size: 20.0,
                          ),
                          incrementIconBuilder: (enabled) => FaIcon(
                            FontAwesomeIcons.plus,
                            color:
                                enabled ? Color(0xFF298000) : Color(0xFFEEEEEE),
                            size: 20.0,
                          ),
                          countBuilder: (count) => Text(
                            count.toString(),
                            style: GoogleFonts.getFont(
                              'Roboto',
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.0,
                            ),
                          ),
                          count: _model.countControllerValue ??=
                              columnProdutoVendaRecord.quantidade,
                          updateCount: (count) => setState(
                              () => _model.countControllerValue = count),
                          stepSize: 1,
                          minimum: 1,
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 10.0, 10.0, 10.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 25.0, 0.0),
                    child: StreamBuilder<ProdutoRecord>(
                      stream: ProdutoRecord.getDocument(
                          columnProdutoVendaRecord.produto!),
                      builder: (context, snapshot) {
                        // Customize what your widget looks like when it's loading.
                        if (!snapshot.hasData) {
                          return Center(
                            child: SizedBox(
                              width: 50.0,
                              height: 50.0,
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  FlutterFlowTheme.of(context).primary,
                                ),
                              ),
                            ),
                          );
                        }
                        final buttonProdutoRecord = snapshot.data!;
                        return FFButtonWidget(
                          onPressed: () async {
                            await columnProdutoVendaRecord.reference
                                .update(createProdutoVendaRecordData(
                              valorSubtotal: functions.subtotalProduto(
                                  buttonProdutoRecord.valor,
                                  _model.countControllerValue!),
                              quantidade: _model.countControllerValue,
                            ));
                            context.pop();
                          },
                          text: 'ATUALIZAR',
                          options: FFButtonOptions(
                            width: 140.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFF298000),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: Colors.white,
                                ),
                            elevation: 5.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        );
                      },
                    ),
                  ),
                  FFButtonWidget(
                    onPressed: () async {
                      context.pop();
                    },
                    text: 'CANCELAR',
                    options: FFButtonOptions(
                      width: 140.0,
                      height: 50.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).primary,
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Open Sans',
                                color: Colors.white,
                              ),
                      elevation: 5.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
