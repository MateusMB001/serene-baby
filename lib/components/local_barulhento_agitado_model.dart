import '/components/bebe_mamou_agitado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LocalBarulhentoAgitadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVLocalBarulhento widget.
  PageController? pVLocalBarulhentoController;
  // Model for bebeMamouAgitado component.
  late BebeMamouAgitadoModel bebeMamouAgitadoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bebeMamouAgitadoModel = createModel(context, () => BebeMamouAgitadoModel());
  }

  void dispose() {
    bebeMamouAgitadoModel.dispose();
  }

  /// Additional helper methods are added here.

}
