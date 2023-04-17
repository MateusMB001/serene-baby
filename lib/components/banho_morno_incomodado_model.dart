import '/components/bebe_mamou_incomodado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BanhoMornoIncomodadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVBanhoMornoIncomodado widget.
  PageController? pVBanhoMornoIncomodadoController;
  // Model for bebeMamouIncomodado component.
  late BebeMamouIncomodadoModel bebeMamouIncomodadoModel1;
  // Model for bebeMamouIncomodado component.
  late BebeMamouIncomodadoModel bebeMamouIncomodadoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bebeMamouIncomodadoModel1 =
        createModel(context, () => BebeMamouIncomodadoModel());
    bebeMamouIncomodadoModel2 =
        createModel(context, () => BebeMamouIncomodadoModel());
  }

  void dispose() {
    bebeMamouIncomodadoModel1.dispose();
    bebeMamouIncomodadoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
