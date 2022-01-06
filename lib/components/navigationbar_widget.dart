import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../landing_page/landing_page_widget.dart';
import '../reg_page/reg_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NavigationbarWidget extends StatefulWidget {
  const NavigationbarWidget({Key key}) : super(key: key);

  @override
  _NavigationbarWidgetState createState() => _NavigationbarWidgetState();
}

class _NavigationbarWidgetState extends State<NavigationbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 225,
      decoration: BoxDecoration(
        color: Color(0xFF050827),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.04,
              constraints: BoxConstraints(
                maxHeight: 20,
              ),
              decoration: BoxDecoration(
                color: Color(0xFF050827),
                shape: BoxShape.rectangle,
              ),
              child: Text(
                'Hello ',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Source Sans Pro',
                  color: FlutterFlowTheme.tertiaryColor,
                  fontSize: 16,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Text(
                'Welcome to CoinDCX!',
                style: FlutterFlowTheme.title1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFF8F8F8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Text(
                'Ready To start investing in crypto? ',
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFF8F8F8),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 35, 25, 0),
              child: InkWell(
                onTap: () async {
                  await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegPageWidget(),
                    ),
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: Color(0xFF121D5C),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 8),
                    child: InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LandingPageWidget(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign up for free',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFFFAF6F6),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(88, 10, 0, 0),
              child: Text(
                'Benefits of Signing Up',
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.bodyText1.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFFF8F8F8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
