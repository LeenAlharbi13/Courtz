import '/flutter_flow/flutter_flow_util.dart';
import 'court_view_widget.dart' show CourtViewWidget;
import 'package:flutter/material.dart';

class CourtViewModel extends FlutterFlowModel<CourtViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
