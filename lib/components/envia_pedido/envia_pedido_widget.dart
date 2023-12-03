import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'envia_pedido_model.dart';
export 'envia_pedido_model.dart';

class EnviaPedidoWidget extends StatefulWidget {
  const EnviaPedidoWidget({Key? key}) : super(key: key);

  @override
  _EnviaPedidoWidgetState createState() => _EnviaPedidoWidgetState();
}

class _EnviaPedidoWidgetState extends State<EnviaPedidoWidget> {
  late EnviaPedidoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EnviaPedidoModel());

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

    return Align(
      alignment: AlignmentDirectional(0.00, 0.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
        child: Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: [
              BoxShadow(
                blurRadius: 10.0,
                color: Color(0x15000000),
                offset: Offset(0.0, 10.0),
              )
            ],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.asset(
                'assets/lottie_animations/41147-pizza-loading-icon.json',
                width: 150.0,
                height: 130.0,
                fit: BoxFit.cover,
                repeat: false,
                animate: true,
              ),
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: SelectionArea(
                      child: Text(
                    'Produto Adicionado',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
