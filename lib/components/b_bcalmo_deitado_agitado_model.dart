import '/components/b_balgona_boca_saliva_agitado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BBcalmoDeitadoAgitadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVbebeCalmoDeitado widget.
  PageController? pVbebeCalmoDeitadoController;
  // Model for BBalgonaBocaSalivaAgitado component.
  late BBalgonaBocaSalivaAgitadoModel bBalgonaBocaSalivaAgitadoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bBalgonaBocaSalivaAgitadoModel =
        createModel(context, () => BBalgonaBocaSalivaAgitadoModel());
  }

  void dispose() {
    bBalgonaBocaSalivaAgitadoModel.dispose();
  }

  /// Additional helper methods are added here.

}
