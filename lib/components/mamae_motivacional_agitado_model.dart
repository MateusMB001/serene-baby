import '/components/local_barulhento_agitado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MamaeMotivacionalAgitadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVmamaeAgitado widget.
  PageController? pVmamaeAgitadoController;
  // Model for LocalBarulhentoAgitado component.
  late LocalBarulhentoAgitadoModel localBarulhentoAgitadoModel1;
  // Model for LocalBarulhentoAgitado component.
  late LocalBarulhentoAgitadoModel localBarulhentoAgitadoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    localBarulhentoAgitadoModel1 =
        createModel(context, () => LocalBarulhentoAgitadoModel());
    localBarulhentoAgitadoModel2 =
        createModel(context, () => LocalBarulhentoAgitadoModel());
  }

  void dispose() {
    localBarulhentoAgitadoModel1.dispose();
    localBarulhentoAgitadoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
