import '/components/b_bquente_febrio_chorando_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BBcalmoDeitadoChorandoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVbebeCalmoDeitadoChorando widget.
  PageController? pVbebeCalmoDeitadoChorandoController;
  // Model for BBquenteFebrioChorando component.
  late BBquenteFebrioChorandoModel bBquenteFebrioChorandoModel1;
  // Model for BBquenteFebrioChorando component.
  late BBquenteFebrioChorandoModel bBquenteFebrioChorandoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bBquenteFebrioChorandoModel1 =
        createModel(context, () => BBquenteFebrioChorandoModel());
    bBquenteFebrioChorandoModel2 =
        createModel(context, () => BBquenteFebrioChorandoModel());
  }

  void dispose() {
    bBquenteFebrioChorandoModel1.dispose();
    bBquenteFebrioChorandoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
