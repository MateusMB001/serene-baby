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
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  int get pageViewVideosCurrentIndex =>
      _model.pageViewVideosController != null &&
              _model.pageViewVideosController!.hasClients &&
              _model.pageViewVideosController!.page != null
          ? _model.pageViewVideosController!.page!.round()
          : 0;
  int get pageViewMusicasCurrentIndex =>
      _model.pageViewMusicasController != null &&
              _model.pageViewMusicasController!.hasClients &&
              _model.pageViewMusicasController!.page != null
          ? _model.pageViewMusicasController!.page!.round()
          : 0;

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      drawer: Container(
        width: 280.0,
        child: Drawer(
          elevation: 0.0,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF68DCE8), Color(0xFF00A2FF)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(1.0, 0.0),
                end: AlignmentDirectional(-1.0, 0),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          'assets/images/Design_sem_nome-removebg-preview.png',
                          width: 70.0,
                          height: 80.0,
                          fit: BoxFit.contain,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }

                        context.pushNamed(
                          'editarperfil',
                          extra: <String, dynamic>{
                            kTransitionInfoKey: TransitionInfo(
                              hasTransition: true,
                              transitionType: PageTransitionType.bottomToTop,
                            ),
                          },
                        );
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Editar perfil',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poiret One',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                    color: Colors.white,
                  ),
                  Builder(
                    builder: (context) => Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                      child: InkWell(
                        onTap: () async {
                          await Share.share(
                            'serenebaby://petagenda.net${GoRouter.of(context).location}',
                            sharePositionOrigin: getWidgetBoundingBox(context),
                          );
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Container(
                                width: 100.0,
                                height: 30.0,
                                decoration: BoxDecoration(
                                  color: Color(0x00FFFFFF),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Recomendar para um amigo',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poiret One',
                                              color: Colors.white,
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.w600,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                    color: Colors.white,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        HapticFeedback.lightImpact();
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Avaliar na Play Store',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poiret One',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                    color: Colors.white,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }

                        await launchURL(
                            'https://insperis.tech/politica-serenebaby');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Política de privacidade',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poiret One',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                    color: Colors.white,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }

                        await launchURL('https://insperis.tech/contato');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Contato',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poiret One',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                    color: Colors.white,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(10.0, 10.0, 10.0, 0.0),
                    child: InkWell(
                      onTap: () async {
                        if (scaffoldKey.currentState!.isDrawerOpen ||
                            scaffoldKey.currentState!.isEndDrawerOpen) {
                          Navigator.pop(context);
                        }

                        context.pushNamed('sobre');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: Container(
                              width: 100.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: Color(0x00FFFFFF),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 10.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Sobre o Serene Baby',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poiret One',
                                            color: Colors.white,
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                    indent: 10.0,
                    endIndent: 10.0,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFAFAFA), Color(0xFFB9F3F9)],
            stops: [0.0, 1.0],
            begin: AlignmentDirectional(1.0, 0.0),
            end: AlignmentDirectional(-1.0, 0),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFF68DCE8), Colors.blue],
                          stops: [0.0, 1.0],
                          begin: AlignmentDirectional(1.0, 0.0),
                          end: AlignmentDirectional(-1.0, 0),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 20.0, 70.0, 0.0),
                            child: InkWell(
                              onTap: () async {
                                scaffoldKey.currentState!.openDrawer();
                              },
                              child: Icon(
                                Icons.menu_rounded,
                                color: Color(0xE9FFFFFF),
                                size: 30.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 15.0, 0.0, 0.0),
                            child: Text(
                              'Serene Baby',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poiret One',
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.w900,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyMediumFamily),
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          width: 100.0,
                          height: 325.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://www.youtube.com/watch?v=YhJQ5pjoi6c',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Color(0x5F4C4C4C),
                            ),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Expanded(
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 3.0, 0.0, 0.0),
                                      child: Container(
                                        width: 350.0,
                                        height: 230.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(20.0),
                                          border: Border.all(
                                            color: Color(0x004C4C4C),
                                          ),
                                        ),
                                        child:
                                            StreamBuilder<List<VideosRecord>>(
                                          stream: queryVideosRecord(),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return Center(
                                                child: SizedBox(
                                                  width: 50.0,
                                                  height: 50.0,
                                                  child: SpinKitDoubleBounce(
                                                    color: Color(0xFFFFC300),
                                                    size: 50.0,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<VideosRecord>
                                                pageViewVideosVideosRecordList =
                                                snapshot.data!;
                                            return Container(
                                              width: double.infinity,
                                              height: 500.0,
                                              child: PageView.builder(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                controller: _model
                                                        .pageViewVideosController ??=
                                                    PageController(
                                                        initialPage: min(
                                                            0,
                                                            pageViewVideosVideosRecordList
                                                                    .length -
                                                                1)),
                                                scrollDirection:
                                                    Axis.horizontal,
                                                itemCount:
                                                    pageViewVideosVideosRecordList
                                                        .length,
                                                itemBuilder: (context,
                                                    pageViewVideosIndex) {
                                                  final pageViewVideosVideosRecord =
                                                      pageViewVideosVideosRecordList[
                                                          pageViewVideosIndex];
                                                  return Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 5.0,
                                                                5.0, 5.0),
                                                    child: Row(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        if (FFAppState()
                                                                .playGIF ==
                                                            'pause')
                                                          Expanded(
                                                            child: InkWell(
                                                              onTap: () async {
                                                                await Navigator
                                                                    .push(
                                                                  context,
                                                                  PageTransition(
                                                                    type: PageTransitionType
                                                                        .fade,
                                                                    child:
                                                                        FlutterFlowExpandedImageView(
                                                                      image: Image
                                                                          .network(
                                                                        pageViewVideosVideosRecord
                                                                            .videos!,
                                                                        fit: BoxFit
                                                                            .contain,
                                                                      ),
                                                                      allowRotation:
                                                                          false,
                                                                      useHeroAnimation:
                                                                          false,
                                                                    ),
                                                                  ),
                                                                );
                                                              },
                                                              child: Hero(
                                                                tag: pageViewVideosVideosRecord
                                                                    .videos!,
                                                                transitionOnUserGestures:
                                                                    true,
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              20.0),
                                                                  child: Image
                                                                      .network(
                                                                    pageViewVideosVideosRecord
                                                                        .videos!,
                                                                    width:
                                                                        100.0,
                                                                    height:
                                                                        220.0,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8.0, 0.0, 8.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 110.0, 0.0),
                                        child: InkWell(
                                          onTap: () async {
                                            await _model
                                                .pageViewVideosController
                                                ?.previousPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                          },
                                          child: Icon(
                                            Icons.arrow_back_ios,
                                            color: Colors.black,
                                            size: 25.0,
                                          ),
                                        ),
                                      ),
                                      if (FFAppState().playGIF == 'play')
                                        InkWell(
                                          onTap: () async {
                                            setState(() {
                                              FFAppState().playGIF = 'pause';
                                            });
                                          },
                                          child: Icon(
                                            Icons.play_arrow_rounded,
                                            color: Colors.black,
                                            size: 30.0,
                                          ),
                                        ),
                                      if (FFAppState().playGIF == 'pause')
                                        InkWell(
                                          onTap: () async {
                                            setState(() {
                                              FFAppState().playGIF = 'play';
                                            });
                                          },
                                          child: Icon(
                                            Icons.stop,
                                            color: Colors.black,
                                            size: 24.0,
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            110.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          onTap: () async {
                                            await _model
                                                .pageViewVideosController
                                                ?.nextPage(
                                              duration:
                                                  Duration(milliseconds: 300),
                                              curve: Curves.ease,
                                            );
                                          },
                                          child: Icon(
                                            Icons.arrow_forward_ios,
                                            color: Colors.black,
                                            size: 25.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 8.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          8.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Briho',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Poiret One',
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w800,
                                              useGoogleFonts: GoogleFonts
                                                      .asMap()
                                                  .containsKey(
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .bodyMediumFamily),
                                            ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: 200.0,
                                        child: Slider(
                                          activeColor: Color(0xFF2E97FF),
                                          inactiveColor: Color(0xFF9E9E9E),
                                          min: 0.0,
                                          max: 1.0,
                                          value: _model.sliderValue1 ??= 0.459,
                                          onChanged: (newValue) async {
                                            setState(() =>
                                                _model.sliderValue1 = newValue);
                                            await actions.definirBrilho(
                                              _model.sliderValue1!,
                                            );
                                          },
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 10.0, 15.0, 10.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        elevation: 3.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          width: 350.0,
                          height: 110.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 100.0,
                                      height: 60.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          height: 500.0,
                                          child: PageView(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            controller: _model
                                                    .pageViewMusicasController ??=
                                                PageController(initialPage: 0),
                                            scrollDirection: Axis.horizontal,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            110.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_back_ios,
                                                                      color: Colors
                                                                          .black,
                                                                      size:
                                                                          25.0,
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Play')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model.soundPlayer1 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer1!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer1!
                                                                              .stop();
                                                                        }

                                                                        _model
                                                                            .soundPlayer1!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%201%20-%20Brahms.mp3?alt=media&token=51ff6282-79f2-4623-880e-6208cbe6d285')
                                                                            .then((_) =>
                                                                                _model.soundPlayer1!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Pause')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer1
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer3
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pause_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            110.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer1
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer3
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer2 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer2!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer2!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer2!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer2!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%202.mp3?alt=media&token=2b56a655-7335-45eb-b42c-f7b4384055c9')
                                                                            .then((_) =>
                                                                                _model.soundPlayer2!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Canção de ninar 1',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poiret One',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            110.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer4
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer2
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer6
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer3 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer3!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer3!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer3!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer3!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%201%20-%20Brahms.mp3?alt=media&token=51ff6282-79f2-4623-880e-6208cbe6d285')
                                                                            .then((_) =>
                                                                                _model.soundPlayer3!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Play')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model.soundPlayer4 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer4!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer4!
                                                                              .stop();
                                                                        }

                                                                        _model
                                                                            .soundPlayer4!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%202.mp3?alt=media&token=2b56a655-7335-45eb-b42c-f7b4384055c9')
                                                                            .then((_) =>
                                                                                _model.soundPlayer4!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Pause')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer2
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer4
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer6
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pause_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            110.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer4
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer2
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer6
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer5 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer5!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer5!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer5!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer5!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%203.mp3?alt=media&token=b974d23f-b77e-41ea-8913-5d1fd44344da')
                                                                            .then((_) =>
                                                                                _model.soundPlayer5!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Canção de ninar 2',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poiret One',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            100.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer7
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer5
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer9
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer6 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer6!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer6!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer6!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer6!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%202.mp3?alt=media&token=2b56a655-7335-45eb-b42c-f7b4384055c9')
                                                                            .then((_) =>
                                                                                _model.soundPlayer6!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Play')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model.soundPlayer7 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer7!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer7!
                                                                              .stop();
                                                                        }

                                                                        _model
                                                                            .soundPlayer7!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%203.mp3?alt=media&token=b974d23f-b77e-41ea-8913-5d1fd44344da')
                                                                            .then((_) =>
                                                                                _model.soundPlayer7!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Pause')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer5
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer7
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer9
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pause_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            100.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer7
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer5
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer9
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer8 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer8!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer8!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer8!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer8!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%204.mp3?alt=media&token=b32a5e9c-6fa8-4339-9212-2e601548677f')
                                                                            .then((_) =>
                                                                                _model.soundPlayer8!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Canção de ninar 3',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poiret One',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            110.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer10
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer8
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer12
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer9 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer9!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer9!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer9!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer9!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%203.mp3?alt=media&token=b974d23f-b77e-41ea-8913-5d1fd44344da')
                                                                            .then((_) =>
                                                                                _model.soundPlayer9!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Play')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model.soundPlayer10 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer10!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer10!
                                                                              .stop();
                                                                        }

                                                                        _model
                                                                            .soundPlayer10!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%204.mp3?alt=media&token=b32a5e9c-6fa8-4339-9212-2e601548677f')
                                                                            .then((_) =>
                                                                                _model.soundPlayer10!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Pause')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer8
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer10
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer12
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pause_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            110.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer10
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer8
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer12
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer11 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer11!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer11!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer11!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer11!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%205.mp3?alt=media&token=e3d4e87e-8614-46d5-80e6-30f859b09cb6')
                                                                            .then((_) =>
                                                                                _model.soundPlayer11!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Canção de ninar 4',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poiret One',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            110.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer13
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer11
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer15
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer12 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer12!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer12!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer12!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer12!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%204.mp3?alt=media&token=b32a5e9c-6fa8-4339-9212-2e601548677f')
                                                                            .then((_) =>
                                                                                _model.soundPlayer12!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Play')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model.soundPlayer13 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer13!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer13!
                                                                              .stop();
                                                                        }

                                                                        _model
                                                                            .soundPlayer13!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%205.mp3?alt=media&token=e3d4e87e-8614-46d5-80e6-30f859b09cb6')
                                                                            .then((_) =>
                                                                                _model.soundPlayer13!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Pause')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer11
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer13
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer15
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pause_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            110.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer13
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer11
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer15
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer14 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer14!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer14!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer14!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer14!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FSonho%20suave.mp3?alt=media&token=052b09d3-fcbd-4a56-b0f7-110a6f62e3b6')
                                                                            .then((_) =>
                                                                                _model.soundPlayer14!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Canção de ninar 5',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poiret One',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            110.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer16
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer14
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer18
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer15 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer15!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer15!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer15!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer15!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCan%C3%A7%C3%A3o%20de%20ninar%205.mp3?alt=media&token=e3d4e87e-8614-46d5-80e6-30f859b09cb6')
                                                                            .then((_) =>
                                                                                _model.soundPlayer15!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Play')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model.soundPlayer16 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer16!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer16!
                                                                              .stop();
                                                                        }

                                                                        _model
                                                                            .soundPlayer16!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FSonho%20suave.mp3?alt=media&token=052b09d3-fcbd-4a56-b0f7-110a6f62e3b6')
                                                                            .then((_) =>
                                                                                _model.soundPlayer16!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Pause')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer14
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer16
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer18
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pause_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            110.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer16
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer14
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer18
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer17 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer17!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer17!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer17!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer17!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FM%C3%BAsica%20do%20ABC.mp3?alt=media&token=71aff0ce-f634-4272-a69f-8e1f02c5b447')
                                                                            .then((_) =>
                                                                                _model.soundPlayer17!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Sonho suave',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poiret One',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            110.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer19
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer17
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer21
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer18 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer18!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer18!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer18!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer18!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FSonho%20suave.mp3?alt=media&token=052b09d3-fcbd-4a56-b0f7-110a6f62e3b6')
                                                                            .then((_) =>
                                                                                _model.soundPlayer18!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Play')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model.soundPlayer19 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer19!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer19!
                                                                              .stop();
                                                                        }

                                                                        _model
                                                                            .soundPlayer19!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FM%C3%BAsica%20do%20ABC.mp3?alt=media&token=71aff0ce-f634-4272-a69f-8e1f02c5b447')
                                                                            .then((_) =>
                                                                                _model.soundPlayer19!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Pause')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer17
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer19
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer21
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pause_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            110.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer19
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer17
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer21
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer20 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer20!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer20!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer20!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer20!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCalma%20beb%C3%AAzinho.mp3?alt=media&token=527f35a8-ba76-4b1b-9c91-f65c391a877c')
                                                                            .then((_) =>
                                                                                _model.soundPlayer20!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Música do ABC',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poiret One',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            110.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer22
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer20
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer24
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer21 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer21!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer21!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer21!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer21!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FM%C3%BAsica%20do%20ABC.mp3?alt=media&token=71aff0ce-f634-4272-a69f-8e1f02c5b447')
                                                                            .then((_) =>
                                                                                _model.soundPlayer21!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Play')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model.soundPlayer22 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer22!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer22!
                                                                              .stop();
                                                                        }

                                                                        _model
                                                                            .soundPlayer22!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCalma%20beb%C3%AAzinho.mp3?alt=media&token=527f35a8-ba76-4b1b-9c91-f65c391a877c')
                                                                            .then((_) =>
                                                                                _model.soundPlayer22!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Pause')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer22
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer20
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer24
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pause_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            110.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer22
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer20
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer24
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.nextPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer23 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer23!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer23!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer23!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer23!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FBrilha%20uma%20pequena%20estrela.mp3?alt=media&token=700b8646-640e-46fb-a6a3-b6a7d667e6a6')
                                                                            .then((_) =>
                                                                                _model.soundPlayer23!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_forward_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Calma bebêzinho',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poiret One',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      width: 100.0,
                                                      height: 150.0,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20.0),
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .stretch,
                                                        children: [
                                                          Expanded(
                                                            child: Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          8.0,
                                                                          0.0),
                                                              child: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            0.0,
                                                                            110.0,
                                                                            0.0),
                                                                    child:
                                                                        InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer25
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer23
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                        await _model
                                                                            .pageViewMusicasController
                                                                            ?.previousPage(
                                                                          duration:
                                                                              Duration(milliseconds: 300),
                                                                          curve:
                                                                              Curves.ease,
                                                                        );
                                                                        _model.soundPlayer24 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer24!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer24!
                                                                              .stop();
                                                                        }
                                                                        _model
                                                                            .soundPlayer24!
                                                                            .setVolume(1.0);
                                                                        _model
                                                                            .soundPlayer24!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FCalma%20beb%C3%AAzinho.mp3?alt=media&token=527f35a8-ba76-4b1b-9c91-f65c391a877c')
                                                                            .then((_) =>
                                                                                _model.soundPlayer24!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .arrow_back_ios,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            25.0,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Play')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model.soundPlayer25 ??=
                                                                            AudioPlayer();
                                                                        if (_model
                                                                            .soundPlayer25!
                                                                            .playing) {
                                                                          await _model
                                                                              .soundPlayer25!
                                                                              .stop();
                                                                        }

                                                                        _model
                                                                            .soundPlayer25!
                                                                            .setUrl(
                                                                                'https://firebasestorage.googleapis.com/v0/b/serene-baby.appspot.com/o/cms_uploads%2FMusicas%2FBrilha%20uma%20pequena%20estrela.mp3?alt=media&token=700b8646-640e-46fb-a6a3-b6a7d667e6a6')
                                                                            .then((_) =>
                                                                                _model.soundPlayer25!.play());

                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Pause';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .play_arrow_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  if (FFAppState()
                                                                          .playMusica ==
                                                                      'Pause')
                                                                    InkWell(
                                                                      onTap:
                                                                          () async {
                                                                        _model
                                                                            .soundPlayer25
                                                                            ?.stop();
                                                                        _model
                                                                            .soundPlayer23
                                                                            ?.stop();
                                                                        setState(
                                                                            () {
                                                                          FFAppState().playMusica =
                                                                              'Play';
                                                                        });
                                                                      },
                                                                      child:
                                                                          Icon(
                                                                        Icons
                                                                            .pause_rounded,
                                                                        color: Colors
                                                                            .black,
                                                                        size:
                                                                            30.0,
                                                                      ),
                                                                    ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            110.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      Icons
                                                                          .arrow_forward_ios,
                                                                      color: Colors
                                                                          .black,
                                                                      size:
                                                                          25.0,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Text(
                                                                      'Brilha uma pequena estrela',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poiret One',
                                                                            color:
                                                                                Colors.black,
                                                                            fontSize:
                                                                                14.0,
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            useGoogleFonts:
                                                                                GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Volume',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Poiret One',
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMediumFamily),
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Slider(
                                      activeColor: Color(0xFF0084FF),
                                      inactiveColor: Color(0xFF9E9E9E),
                                      min: 0.0,
                                      max: 1.0,
                                      value: _model.sliderValue2 ??= 0.459,
                                      onChanged: (newValue) async {
                                        newValue = double.parse(
                                            newValue.toStringAsFixed(4));
                                        setState(() =>
                                            _model.sliderValue2 = newValue);
                                        await actions.definirVolume(
                                          _model.sliderValue2!,
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Material(
                        color: Colors.transparent,
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: Container(
                          width: 100.0,
                          height: 280.0,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4.0,
                                color: Color(0x33000000),
                                offset: Offset(0.0, 2.0),
                              )
                            ],
                            borderRadius: BorderRadius.circular(20.0),
                            border: Border.all(
                              color: Color(0x4E4C4C4C),
                            ),
                          ),
                          child: Stack(
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 30.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Olá, ${FFAppState().parente}!',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poiret One',
                                                color: Colors.blue,
                                                fontSize: 22.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 20.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Como o bebê está?',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Poiret One',
                                                color: Colors.blue,
                                                fontSize: 25.0,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyMediumFamily),
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0.0, 40.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 0.0, 10.0, 0.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFA0E5ED),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                child: InkWell(
                                                  onTap: () async {
                                                    if ((FFAppState().parente ==
                                                            'Mamãe') ||
                                                        (FFAppState().parente ==
                                                            'Papai')) {
                                                      setState(() {
                                                        FFAppState()
                                                                .AgitadoMamae =
                                                            'abrir';
                                                      });
                                                    } else {
                                                      setState(() {
                                                        FFAppState()
                                                                .agitadoHome =
                                                            'abrir';
                                                      });
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Agitado',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poiret One',
                                                                color: Color(
                                                                    0xFF00AAFF),
                                                                fontSize: 11.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFA0E5ED),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                child: InkWell(
                                                  onTap: () async {
                                                    if ((FFAppState().parente ==
                                                            'Mamãe') ||
                                                        (FFAppState().parente ==
                                                            'Papai')) {
                                                      setState(() {
                                                        FFAppState()
                                                                .incomodadoMamae =
                                                            'abrir';
                                                      });
                                                    } else {
                                                      setState(() {
                                                        FFAppState()
                                                                .IncomodadoHomee =
                                                            'abrir';
                                                      });
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Incomodado',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poiret One',
                                                                color: Color(
                                                                    0xFF00AAFF),
                                                                fontSize: 11.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFA0E5ED),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                child: InkWell(
                                                  onTap: () async {
                                                    if ((FFAppState().parente ==
                                                            'Mamãe') ||
                                                        (FFAppState().parente ==
                                                            'Papai')) {
                                                      setState(() {
                                                        FFAppState()
                                                                .chorandoMamae =
                                                            'abrir';
                                                      });
                                                    } else {
                                                      setState(() {
                                                        FFAppState()
                                                                .chorandoHome =
                                                            'abrir';
                                                      });
                                                    }
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Chorando',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poiret One',
                                                                color: Color(
                                                                    0xFF00AAFF),
                                                                fontSize: 11.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Material(
                                              color: Colors.transparent,
                                              elevation: 2.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25.0),
                                              ),
                                              child: Container(
                                                width: 100.0,
                                                height: 60.0,
                                                decoration: BoxDecoration(
                                                  color: Color(0xFFFF2D2D),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          25.0),
                                                ),
                                                child: InkWell(
                                                  onTap: () async {
                                                    context.pushNamed(
                                                        'emergencia');
                                                  },
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          'Emergência',
                                                          textAlign:
                                                              TextAlign.center,
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poiret One',
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 11.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w900,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              if (FFAppState().agitadoHome == 'abrir')
                                wrapWithModel(
                                  model: _model.localBarulhentoAgitadoModel,
                                  updateCallback: () => setState(() {}),
                                  child: LocalBarulhentoAgitadoWidget(),
                                ),
                              if (FFAppState().IncomodadoHomee == 'abrir')
                                wrapWithModel(
                                  model: _model.localBarulhentoIncomodadoModel,
                                  updateCallback: () => setState(() {}),
                                  child: LocalBarulhentoIncomodadoWidget(),
                                ),
                              if (FFAppState().chorandoHome == 'abrir')
                                wrapWithModel(
                                  model: _model.localBarulhentoChorandoModel,
                                  updateCallback: () => setState(() {}),
                                  child: LocalBarulhentoChorandoWidget(),
                                ),
                              if (FFAppState().AgitadoMamae == 'abrir')
                                wrapWithModel(
                                  model: _model.mamaeMotivacionalAgitadoModel,
                                  updateCallback: () => setState(() {}),
                                  child: MamaeMotivacionalAgitadoWidget(),
                                ),
                              if (FFAppState().incomodadoMamae == 'abrir')
                                wrapWithModel(
                                  model:
                                      _model.mamaeMotivacionalIncomodadoModel,
                                  updateCallback: () => setState(() {}),
                                  child: MamaeMotivacionalIncomodadoWidget(),
                                ),
                              if (FFAppState().chorandoMamae == 'abrir')
                                wrapWithModel(
                                  model: _model.mamaeMotivacionalChorandoModel,
                                  updateCallback: () => setState(() {}),
                                  child: MamaeMotivacionalChorandoWidget(),
                                ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
