import '/components/bebe_mamou_chorando_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MamaeMotivacionalChorandoModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PVmamaeChorando widget.
  PageController? pVmamaeChorandoController;
  // Model for bebeMamouChorando component.
  late BebeMamouChorandoModel bebeMamouChorandoModel1;
  // Model for bebeMamouChorando component.
  late BebeMamouChorandoModel bebeMamouChorandoModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    bebeMamouChorandoModel1 =
        createModel(context, () => BebeMamouChorandoModel());
    bebeMamouChorandoModel2 =
        createModel(context, () => BebeMamouChorandoModel());
  }

  void dispose() {
    bebeMamouChorandoModel1.dispose();
    bebeMamouChorandoModel2.dispose();
  }

  /// Additional helper methods are added here.

}
