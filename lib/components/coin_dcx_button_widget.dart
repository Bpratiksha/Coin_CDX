import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CoinDcxButtonWidget extends StatefulWidget {
  const CoinDcxButtonWidget({
    Key key,
    this.iconText,
    this.icon,
    this.buttonColor,
    this.textColor,
    this.borderColor,
  }) : super(key: key);

  final String iconText;
  final Widget icon;
  final Color buttonColor;
  final Color textColor;
  final Color borderColor;

  @override
  _CoinDcxButtonWidgetState createState() => _CoinDcxButtonWidgetState();
}

class _CoinDcxButtonWidgetState extends State<CoinDcxButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 40,
      decoration: BoxDecoration(
        color: widget.buttonColor,
        borderRadius: BorderRadius.circular(5),
        shape: BoxShape.rectangle,
        border: Border.all(
          width: 2,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
            child: widget.icon,
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
            child: Text(
              widget.iconText,
              textAlign: TextAlign.start,
              style: FlutterFlowTheme.title3.override(
                fontFamily: 'Open Sans',
                lineHeight: 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
