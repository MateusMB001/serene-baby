import '/components/local_barulhento_incomodado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MamaeMotivacionalIncomodadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVmamaeIncomodado widget.
  PageController? pVmamaeIncomodadoController;
  // Model for LocalBarulhentoIncomodado component.
  late LocalBarulhentoIncomodadoModel localBarulhentoIncomodadoModel1;
  // Model for LocalBarulhentoIncomodado component.
  late LocalBarulhentoIncomodadoModel localBarulhentoIncomodadoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    localBarulhentoIncomodadoModel1 =
        createModel(context, () => LocalBarulhentoIncomodadoModel());
    localBarulhentoIncomodadoModel2 =
        createModel(context, () => LocalBarulhentoIncomodadoModel());
  }

  void dispose() {
    localBarulhentoIncomodadoModel1.dispose();
    localBarulhentoIncomodadoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
