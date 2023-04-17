import '/components/b_bcalmo_deitado_agitado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TMAmbienteAgitadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVambienteagradavel widget.
  PageController? pVambienteagradavelController;
  // Model for BBcalmoDeitadoAgitado component.
  late BBcalmoDeitadoAgitadoModel bBcalmoDeitadoAgitadoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bBcalmoDeitadoAgitadoModel =
        createModel(context, () => BBcalmoDeitadoAgitadoModel());
  }

  void dispose() {
    bBcalmoDeitadoAgitadoModel.dispose();
  }

  /// Additional helper methods are added here.

}
