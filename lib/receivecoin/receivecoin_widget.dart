import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ReceivecoinWidget extends StatefulWidget {
  const ReceivecoinWidget({Key key}) : super(key: key);

  @override
  _ReceivecoinWidgetState createState() => _ReceivecoinWidgetState();
}

class _ReceivecoinWidgetState extends State<ReceivecoinWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
    );
  }
}
