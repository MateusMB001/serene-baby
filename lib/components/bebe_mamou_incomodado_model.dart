import '/components/b_bcalmo_deitado_incomodado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BebeMamouIncomodadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVBebeMamouIncomodado widget.
  PageController? pVBebeMamouIncomodadoController;
  // Model for BBcalmoDeitadoIncomodado component.
  late BBcalmoDeitadoIncomodadoModel bBcalmoDeitadoIncomodadoModel1;
  // Model for BBcalmoDeitadoIncomodado component.
  late BBcalmoDeitadoIncomodadoModel bBcalmoDeitadoIncomodadoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bBcalmoDeitadoIncomodadoModel1 =
        createModel(context, () => BBcalmoDeitadoIncomodadoModel());
    bBcalmoDeitadoIncomodadoModel2 =
        createModel(context, () => BBcalmoDeitadoIncomodadoModel());
  }

  void dispose() {
    bBcalmoDeitadoIncomodadoModel1.dispose();
    bBcalmoDeitadoIncomodadoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
