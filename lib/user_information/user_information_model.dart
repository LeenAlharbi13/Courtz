import '/flutter_flow/flutter_flow_util.dart';
import 'user_information_widget.dart' show UserInformationWidget;
import 'package:flutter/material.dart';

class UserInformationModel extends FlutterFlowModel<UserInformationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
