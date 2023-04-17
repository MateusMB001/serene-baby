import '/components/b_bcalmo_deitado_chorando_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocalBarulhentoChorandoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVLBarulhentoChorando widget.
  PageController? pVLBarulhentoChorandoController;
  // Model for BBcalmoDeitadoChorando component.
  late BBcalmoDeitadoChorandoModel bBcalmoDeitadoChorandoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bBcalmoDeitadoChorandoModel =
        createModel(context, () => BBcalmoDeitadoChorandoModel());
  }

  void dispose() {
    bBcalmoDeitadoChorandoModel.dispose();
  }

  /// Additional helper methods are added here.

}
