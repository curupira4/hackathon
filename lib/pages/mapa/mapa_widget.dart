import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
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
          child: Stack(
            children: [
              Column(
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
                                alignment: AlignmentDirectional(0.88, -0.97),
                                child: PointerInterceptor(
                                  intercepting: isWeb,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/WhatsApp_Image_2025-11-19_at_13.52.50-removebg-preview.png',
                                      width: 60.0,
                                      height: 60.0,
                                      fit: BoxFit.cover,
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
              Align(
                alignment: AlignmentDirectional(-1.01, -1.01),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 0.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.white,
                    borderRadius: 20.0,
                    borderWidth: 1.0,
                    buttonSize: 40.0,
                    fillColor: Color(0xFFFF5722),
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      context.safePop();
                    },
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
