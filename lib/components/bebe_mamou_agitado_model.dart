import '/components/banho_morno_agitado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BebeMamouAgitadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVBebeMamou widget.
  PageController? pVBebeMamouController;
  // Model for banhoMornoAgitado component.
  late BanhoMornoAgitadoModel banhoMornoAgitadoModel1;
  // Model for banhoMornoAgitado component.
  late BanhoMornoAgitadoModel banhoMornoAgitadoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    banhoMornoAgitadoModel1 =
        createModel(context, () => BanhoMornoAgitadoModel());
    banhoMornoAgitadoModel2 =
        createModel(context, () => BanhoMornoAgitadoModel());
  }

  void dispose() {
    banhoMornoAgitadoModel1.dispose();
    banhoMornoAgitadoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
