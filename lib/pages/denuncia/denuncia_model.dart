import '/flutter_flow/flutter_flow_util.dart';
import 'denuncia_widget.dart' show DenunciaWidget;
import 'package:flutter/material.dart';

class DenunciaModel extends FlutterFlowModel<DenunciaWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataUy7 = false;
  FFUploadedFile uploadedLocalFile_uploadDataUy7 =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
