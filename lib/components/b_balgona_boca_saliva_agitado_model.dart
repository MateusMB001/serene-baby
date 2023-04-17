import '/components/b_b_agitado_h_rdormir_agitado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BBalgonaBocaSalivaAgitadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVBBbocasalivando widget.
  PageController? pVBBbocasalivandoController;
  // Model for BBAgitadoHRdormirAgitado component.
  late BBAgitadoHRdormirAgitadoModel bBAgitadoHRdormirAgitadoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bBAgitadoHRdormirAgitadoModel =
        createModel(context, () => BBAgitadoHRdormirAgitadoModel());
  }

  void dispose() {
    bBAgitadoHRdormirAgitadoModel.dispose();
  }

  /// Additional helper methods are added here.

}
