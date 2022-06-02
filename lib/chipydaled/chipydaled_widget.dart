import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChipydaledWidget extends StatefulWidget {
  const ChipydaledWidget({Key key}) : super(key: key);

  @override
  _ChipydaledWidgetState createState() => _ChipydaledWidgetState();
}

class _ChipydaledWidgetState extends State<ChipydaledWidget> {
  String choiceChipsValue1;
  String choiceChipsValue2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                          child: Image.network(
                            'https://raw.githubusercontent.com/GustavoGuzman-Hernandez/imagenesGitHub/main/chip_n_dale_rescue_rangers-335785940-large.jpg',
                            width: MediaQuery.of(context).size.width,
                            height: 540,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 60,
                              fillColor: Color(0x1D000000),
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 30,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Text(
                        'Chip y Dale Al Rescate',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title1,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '95%',
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                            Text(
                              'Rotten Tomatoes',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            Image.network(
                              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Rotten_Tomatoes_alternative_logo.svg/1200px-Rotten_Tomatoes_alternative_logo.svg.png',
                              width: 25,
                              height: 25,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '8.4/10',
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                            Text(
                              'IMDB',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://ia.media-imdb.com/images/M/MV5BMjEzNDc2NTUwNF5BMl5BcG5nXkFtZTgwODY0MzQ2OTE@._V1_.png',
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              '7.4/10',
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                            Text(
                              'FA',
                              style: FlutterFlowTheme.of(context).bodyText1,
                            ),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'data:image/png;base64,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',
                                width: 25,
                                height: 25,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Text(
                        'Chip \'n Dale: Rescue Rangers es una comedia de aventuras híbrida de animación y acción en vivo​ estadounidense basada en la serie de televisión animada del mismo nombre, y una continuación de esta.​',
                        textAlign: TextAlign.start,
                        style: FlutterFlowTheme.of(context).bodyText1,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Video',
                          style: FlutterFlowTheme.of(context).title3,
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: FlutterFlowChoiceChips(
                            initiallySelected: [choiceChipsValue1],
                            options: [
                              ChipData('1080p', Icons.hd_outlined),
                              ChipData('720p', Icons.hd_outlined),
                              ChipData('360p'),
                              ChipData('128kbps')
                            ],
                            onChanged: (val) =>
                                setState(() => choiceChipsValue1 = val.first),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0xFFEA3703),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              iconColor: Colors.white,
                              iconSize: 18,
                              elevation: 4,
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF323B45),
                                  ),
                              iconColor: Color(0xFF323B45),
                              iconSize: 18,
                              elevation: 4,
                            ),
                            chipSpacing: 20,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                          child: Text(
                            'Sonido',
                            style: FlutterFlowTheme.of(context).title3,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(125, 0, 100, 0),
                          child: FlutterFlowChoiceChips(
                            initiallySelected: [choiceChipsValue2],
                            options: [ChipData('MP3'), ChipData('MP4')],
                            onChanged: (val) =>
                                setState(() => choiceChipsValue2 = val.first),
                            selectedChipStyle: ChipStyle(
                              backgroundColor: Color(0xFFEA3703),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              iconColor: Colors.white,
                              iconSize: 18,
                              elevation: 4,
                            ),
                            unselectedChipStyle: ChipStyle(
                              backgroundColor: Colors.white,
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF323B45),
                                  ),
                              iconColor: Color(0xFF323B45),
                              iconSize: 18,
                              elevation: 4,
                            ),
                            chipSpacing: 20,
                            multiselect: false,
                            alignment: WrapAlignment.start,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 60),
                          child: FFButtonWidget(
                            onPressed: () {
                              print('Button pressed ...');
                            },
                            text: 'Descargar',
                            icon: Icon(
                              Icons.file_download,
                              size: 15,
                            ),
                            options: FFButtonOptions(
                              width: 150,
                              height: 50,
                              color: Color(0xFFEA3703),
                              textStyle: FlutterFlowTheme.of(context)
                                  .subtitle2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                              borderSide: BorderSide(
                                color: Colors.transparent,
                                width: 1,
                              ),
                              borderRadius: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
