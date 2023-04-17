import '/components/b_bcoco_duro_incomodado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BBalgonaBocaSalivaChorandoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVBBbocasalivandoChorando widget.
  PageController? pVBBbocasalivandoChorandoController;
  // Model for BBcocoDuroIncomodado component.
  late BBcocoDuroIncomodadoModel bBcocoDuroIncomodadoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bBcocoDuroIncomodadoModel =
        createModel(context, () => BBcocoDuroIncomodadoModel());
  }

  void dispose() {
    bBcocoDuroIncomodadoModel.dispose();
  }

  /// Additional helper methods are added here.

}
