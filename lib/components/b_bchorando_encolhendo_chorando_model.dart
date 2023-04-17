import '/components/t_m_ambiente_chorando_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BBchorandoEncolhendoChorandoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVBBcontorcendoChorando widget.
  PageController? pVBBcontorcendoChorandoController;
  // Model for TMAmbienteChorando component.
  late TMAmbienteChorandoModel tMAmbienteChorandoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tMAmbienteChorandoModel =
        createModel(context, () => TMAmbienteChorandoModel());
  }

  void dispose() {
    tMAmbienteChorandoModel.dispose();
  }

  /// Additional helper methods are added here.

}
