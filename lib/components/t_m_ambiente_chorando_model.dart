import '/components/banho_morno_chorando_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TMAmbienteChorandoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVambienteChorando widget.
  PageController? pVambienteChorandoController;
  // Model for banhoMornoChorando component.
  late BanhoMornoChorandoModel banhoMornoChorandoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    banhoMornoChorandoModel =
        createModel(context, () => BanhoMornoChorandoModel());
  }

  void dispose() {
    banhoMornoChorandoModel.dispose();
  }

  /// Additional helper methods are added here.

}
