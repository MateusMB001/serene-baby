import '/components/b_bcoco_duro_chorando_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BanhoMornoChorandoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVBanhoMornoChorando widget.
  PageController? pVBanhoMornoChorandoController;
  // Model for BBcocoDuroChorando component.
  late BBcocoDuroChorandoModel bBcocoDuroChorandoModel1;
  // Model for BBcocoDuroChorando component.
  late BBcocoDuroChorandoModel bBcocoDuroChorandoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bBcocoDuroChorandoModel1 =
        createModel(context, () => BBcocoDuroChorandoModel());
    bBcocoDuroChorandoModel2 =
        createModel(context, () => BBcocoDuroChorandoModel());
  }

  void dispose() {
    bBcocoDuroChorandoModel1.dispose();
    bBcocoDuroChorandoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
