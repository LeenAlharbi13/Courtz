import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'court_view_model.dart';
export 'court_view_model.dart';

class CourtViewWidget extends StatefulWidget {
  const CourtViewWidget({super.key});

  @override
  State<CourtViewWidget> createState() => _CourtViewWidgetState();
}

class _CourtViewWidgetState extends State<CourtViewWidget> {
  late CourtViewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CourtViewModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(0.0),
                      child: Image.network(
                        'https://images.unsplash.com/photo-1593202459074-6da90623cbe0?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxMnx8c3BvcnRzJTIwY291cnR8ZW58MHx8fHwxNzExNDgyMDA2fDA&ixlib=rb-4.0.3&q=80&w=1080',
                        width: 390.0,
                        height: 800.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: const AlignmentDirectional(-0.88, -0.92),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                icon: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.07, -0.75),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 304.0,
                fillColor: const Color(0x6057636C),
                icon: Icon(
                  Icons.panorama_horizontal_sharp,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 150.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.89, -0.28),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                fillColor: const Color(0x00FFFFFF),
                icon: Icon(
                  Icons.touch_app_outlined,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 20.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.02, -0.26),
              child: Text(
                'Touch the screen and drag to navigate',
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Inter',
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
