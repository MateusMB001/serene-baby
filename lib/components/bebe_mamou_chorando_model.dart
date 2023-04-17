import '/components/local_barulhento_chorando_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BebeMamouChorandoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVBebeMamouChorando widget.
  PageController? pVBebeMamouChorandoController;
  // Model for LocalBarulhentoChorando component.
  late LocalBarulhentoChorandoModel localBarulhentoChorandoModel1;
  // Model for LocalBarulhentoChorando component.
  late LocalBarulhentoChorandoModel localBarulhentoChorandoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    localBarulhentoChorandoModel1 =
        createModel(context, () => LocalBarulhentoChorandoModel());
    localBarulhentoChorandoModel2 =
        createModel(context, () => LocalBarulhentoChorandoModel());
  }

  void dispose() {
    localBarulhentoChorandoModel1.dispose();
    localBarulhentoChorandoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
