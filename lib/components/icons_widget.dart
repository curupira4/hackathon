import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'icons_model.dart';
export 'icons_model.dart';

/// Create floating button components to integrate into the map as location
/// indicators, taking into account the context of indigenous peoples and the
/// Amazon rainforest.
class IconsWidget extends StatefulWidget {
  const IconsWidget({super.key});

  @override
  State<IconsWidget> createState() => _IconsWidgetState();
}

class _IconsWidgetState extends State<IconsWidget> {
  late IconsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => IconsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
      ),
      child: Container(
        width: 60.0,
        height: 60.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).accent2,
          borderRadius: BorderRadius.circular(40.0),
          border: Border.all(
            color: Colors.white,
            width: 2.0,
          ),
        ),
        child: Container(
          width: 80.0,
          height: 80.0,
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(40.0),
                child: Image.network(
                  'https://images.unsplash.com/photo-1662013605911-a967af9e7249?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHJhbmRvbXx8fHx8fHx8fDE3NjM1NjA3NTB8&ixlib=rb-4.1.0&q=80&w=1080',
                  width: 80.0,
                  height: 80.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.8, 0.8),
                child: Container(
                  width: 24.0,
                  height: 24.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).success,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Icon(
                    Icons.eco,
                    color: Colors.white,
                    size: 16.0,
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
