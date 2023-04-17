import '/components/t_m_ambiente_agitado_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class BanhoMornoAgitadoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVBanhoMorno widget.
  PageController? pVBanhoMornoController;
  // Model for TMAmbienteAgitado component.
  late TMAmbienteAgitadoModel tMAmbienteAgitadoModel1;
  // Model for TMAmbienteAgitado component.
  late TMAmbienteAgitadoModel tMAmbienteAgitadoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tMAmbienteAgitadoModel1 =
        createModel(context, () => TMAmbienteAgitadoModel());
    tMAmbienteAgitadoModel2 =
        createModel(context, () => TMAmbienteAgitadoModel());
  }

  void dispose() {
    tMAmbienteAgitadoModel1.dispose();
    tMAmbienteAgitadoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
