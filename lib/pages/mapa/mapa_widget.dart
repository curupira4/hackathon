import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/localizao/localizao_widget.dart';
import 'package:flutter/material.dart';
import 'package:pointer_interceptor/pointer_interceptor.dart';
import 'mapa_model.dart';
export 'mapa_model.dart';

class MapaWidget extends StatefulWidget {
  const MapaWidget({super.key});

  static String routeName = 'mapa';
  static String routePath = '/mapa';

  @override
  State<MapaWidget> createState() => _MapaWidgetState();
}

class _MapaWidgetState extends State<MapaWidget> {
  late MapaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MapaModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF2D5A3D),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(),
                child: Container(
                  height: 800.0,
                  child: Stack(
                    children: [
                      Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.0, 0.0),
                            child: FlutterFlowGoogleMap(
                              controller: _model.googleMapsController,
                              onCameraIdle: (latLng) =>
                                  _model.googleMapsCenter = latLng,
                              initialLocation: _model.googleMapsCenter ??=
                                  LatLng(-6.261389, -50.803333),
                              markerColor: GoogleMarkerColor.violet,
                              mapType: MapType.satellite,
                              style: GoogleMapStyle.standard,
                              initialZoom: 15.0,
                              allowInteraction: false,
                              allowZoom: false,
                              showZoomControls: false,
                              showLocation: false,
                              showCompass: false,
                              showMapToolbar: false,
                              showTraffic: false,
                              centerMapOnMarkerTap: false,
                              mapTakesGesturePreference: false,
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.02, 0.86),
                            child: PointerInterceptor(
                              intercepting: isWeb,
                              child: wrapWithModel(
                                model: _model.localizaoModel,
                                updateCallback: () => safeSetState(() {}),
                                child: LocalizaoWidget(),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.89, -0.94),
                            child: PointerInterceptor(
                              intercepting: isWeb,
                              child: Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  borderRadius: BorderRadius.circular(6.0),
                                  shape: BoxShape.rectangle,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-0.87, -0.93),
                            child: PointerInterceptor(
                              intercepting: isWeb,
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.safePop();
                                },
                                child: Icon(
                                  Icons.arrow_back,
                                  color: Color(0xFFFF5722),
                                  size: 40.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
