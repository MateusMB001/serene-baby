import '/backend/backend.dart';
import '/components/local_barulhento_agitado_widget.dart';
import '/components/local_barulhento_chorando_widget.dart';
import '/components/local_barulhento_incomodado_widget.dart';
import '/components/mamae_motivacional_agitado_widget.dart';
import '/components/mamae_motivacional_chorando_widget.dart';
import '/components/mamae_motivacional_incomodado_widget.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:just_audio/just_audio.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for PageViewVideos widget.
  PageController? pageViewVideosController;
  // State field(s) for Slider widget.
  double? sliderValue1;
  // State field(s) for PageViewMusicas widget.
  PageController? pageViewMusicasController;
  AudioPlayer? soundPlayer1;
  AudioPlayer? soundPlayer2;
  AudioPlayer? soundPlayer3;
  AudioPlayer? soundPlayer4;
  AudioPlayer? soundPlayer5;
  AudioPlayer? soundPlayer6;
  AudioPlayer? soundPlayer7;
  AudioPlayer? soundPlayer8;
  AudioPlayer? soundPlayer9;
  AudioPlayer? soundPlayer10;
  AudioPlayer? soundPlayer11;
  AudioPlayer? soundPlayer12;
  AudioPlayer? soundPlayer13;
  AudioPlayer? soundPlayer14;
  AudioPlayer? soundPlayer15;
  AudioPlayer? soundPlayer16;
  AudioPlayer? soundPlayer17;
  AudioPlayer? soundPlayer18;
  AudioPlayer? soundPlayer19;
  AudioPlayer? soundPlayer20;
  AudioPlayer? soundPlayer21;
  AudioPlayer? soundPlayer22;
  AudioPlayer? soundPlayer23;
  AudioPlayer? soundPlayer24;
  AudioPlayer? soundPlayer25;
  // State field(s) for Slider widget.
  double? sliderValue2;
  // Model for LocalBarulhentoAgitado component.
  late LocalBarulhentoAgitadoModel localBarulhentoAgitadoModel;
  // Model for LocalBarulhentoIncomodado component.
  late LocalBarulhentoIncomodadoModel localBarulhentoIncomodadoModel;
  // Model for LocalBarulhentoChorando component.
  late LocalBarulhentoChorandoModel localBarulhentoChorandoModel;
  // Model for MamaeMotivacionalAgitado component.
  late MamaeMotivacionalAgitadoModel mamaeMotivacionalAgitadoModel;
  // Model for MamaeMotivacionalIncomodado component.
  late MamaeMotivacionalIncomodadoModel mamaeMotivacionalIncomodadoModel;
  // Model for MamaeMotivacionalChorando component.
  late MamaeMotivacionalChorandoModel mamaeMotivacionalChorandoModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    localBarulhentoAgitadoModel =
        createModel(context, () => LocalBarulhentoAgitadoModel());
    localBarulhentoIncomodadoModel =
        createModel(context, () => LocalBarulhentoIncomodadoModel());
    localBarulhentoChorandoModel =
        createModel(context, () => LocalBarulhentoChorandoModel());
    mamaeMotivacionalAgitadoModel =
        createModel(context, () => MamaeMotivacionalAgitadoModel());
    mamaeMotivacionalIncomodadoModel =
        createModel(context, () => MamaeMotivacionalIncomodadoModel());
    mamaeMotivacionalChorandoModel =
        createModel(context, () => MamaeMotivacionalChorandoModel());
  }

  void dispose() {
    localBarulhentoAgitadoModel.dispose();
    localBarulhentoIncomodadoModel.dispose();
    localBarulhentoChorandoModel.dispose();
    mamaeMotivacionalAgitadoModel.dispose();
    mamaeMotivacionalIncomodadoModel.dispose();
    mamaeMotivacionalChorandoModel.dispose();
  }

  /// Additional helper methods are added here.

}
