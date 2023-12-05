import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'top_menu_model.dart';
export 'top_menu_model.dart';

class TopMenuWidget extends StatefulWidget {
  const TopMenuWidget({Key? key}) : super(key: key);

  @override
  _TopMenuWidgetState createState() => _TopMenuWidgetState();
}

class _TopMenuWidgetState extends State<TopMenuWidget> {
  late TopMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopMenuModel());

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
      alignment: AlignmentDirectional(0.00, -0.96),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  AuthUserStreamWidget(
                    builder: (context) => Text(
                      currentUserDisplayName,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'montapizza',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 12.0,
                            useGoogleFonts: false,
                          ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFF035176),
                    size: 19.0,
                  ),
                  Text(
                    'Rua Ayrton Senna, 04',
                    style: FlutterFlowTheme.of(context).bodySmall.override(
                          fontFamily: 'montapizza',
                          color: FlutterFlowTheme.of(context).primaryText,
                          useGoogleFonts: false,
                        ),
                  ),
                  Icon(
                    Icons.expand_more,
                    color: Color(0xFF035176),
                    size: 19.0,
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: 40.0,
            height: 40.0,
            decoration: BoxDecoration(
              color: Color(0x26FFFFFF),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: badges.Badge(
              badgeContent: Text(
                '1',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'montapizza',
                      color: Colors.white,
                      fontSize: 14.0,
                      useGoogleFonts: false,
                    ),
              ),
              showBadge: true,
              shape: badges.BadgeShape.circle,
              badgeColor: FlutterFlowTheme.of(context).primary,
              elevation: 4.0,
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 8.0, 8.0),
              position: badges.BadgePosition.topEnd(),
              animationType: badges.BadgeAnimationType.scale,
              toAnimate: true,
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  context.safePop();
                },
                child: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFF035176),
                  size: 19.0,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
