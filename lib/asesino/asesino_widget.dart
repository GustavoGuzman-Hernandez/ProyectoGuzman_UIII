import '../flutter_flow/flutter_flow_calendar.dart';
import '../flutter_flow/flutter_flow_checkbox_group.dart';
import '../flutter_flow/flutter_flow_choice_chips.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AsesinoWidget extends StatefulWidget {
  const AsesinoWidget({Key key}) : super(key: key);

  @override
  _AsesinoWidgetState createState() => _AsesinoWidgetState();
}

class _AsesinoWidgetState extends State<AsesinoWidget> {
  DateTimeRange calendarSelectedDay;
  List<String> checkboxGroupValues;
  String choiceChipsValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

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
                            'https://raw.githubusercontent.com/GustavoGuzman-Hernandez/imagenesGitHub/main/killer.jpg',
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
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Selecciona tu cine de preferencia',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xF01A1A37),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Container(
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color(0xFFEEEEEE),
                      ),
                      child: FlutterFlowCheckboxGroup(
                        initiallySelected: checkboxGroupValues != null
                            ? checkboxGroupValues
                            : [],
                        options: [
                          'Gran Patio',
                          'Plaza Sendero',
                          'Las Americas',
                          'Las Misiones'
                        ].toList(),
                        onChanged: (val) =>
                            setState(() => checkboxGroupValues = val),
                        activeColor: Color(0xFF161629),
                        checkColor: Colors.white,
                        checkboxBorderColor: Color(0xFF95A1AC),
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xBB1A1A37),
                                ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Selecciona el dia',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xF01A1A37),
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    FlutterFlowCalendar(
                      color: Color(0xFF161629),
                      weekFormat: false,
                      weekStartsMonday: false,
                      onChange: (DateTimeRange newSelectedDate) {
                        setState(() => calendarSelectedDay = newSelectedDate);
                      },
                      titleStyle: TextStyle(),
                      dayOfWeekStyle: TextStyle(),
                      dateStyle: TextStyle(),
                      selectedDateStyle: TextStyle(),
                      inactiveDateStyle: TextStyle(),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Selecciona la hora',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xF01A1A37),
                          ),
                    ),
                    FlutterFlowChoiceChips(
                      initiallySelected: [choiceChipsValue],
                      options: [
                        ChipData('8:00'),
                        ChipData('8:30'),
                        ChipData('9:45'),
                        ChipData('10:00')
                      ],
                      onChanged: (val) =>
                          setState(() => choiceChipsValue = val.first),
                      selectedChipStyle: ChipStyle(
                        backgroundColor: Color(0xFF161629),
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText1.override(
                                  fontFamily: 'Poppins',
                                  color: Colors.white,
                                ),
                        iconColor: Colors.white,
                        iconSize: 18,
                        elevation: 4,
                      ),
                      unselectedChipStyle: ChipStyle(
                        backgroundColor: Colors.white,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyText2.override(
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 30),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Pagar',
                        options: FFButtonOptions(
                          width: 130,
                          height: 40,
                          color: Color(0xFF161629),
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
