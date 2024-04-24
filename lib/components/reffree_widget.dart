import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'reffree_model.dart';
export 'reffree_model.dart';

class ReffreeWidget extends StatefulWidget {
  const ReffreeWidget({super.key});

  @override
  State<ReffreeWidget> createState() => _ReffreeWidgetState();
}

class _ReffreeWidgetState extends State<ReffreeWidget> {
  late ReffreeModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReffreeModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Switch(
        value: _model.switchValue ??= true,
        onChanged: (newValue) async {
          setState(() => _model.switchValue = newValue);
        },
        activeColor: FlutterFlowTheme.of(context).primaryText,
        activeTrackColor: FlutterFlowTheme.of(context).secondaryText,
        inactiveTrackColor: FlutterFlowTheme.of(context).secondaryText,
        inactiveThumbColor: FlutterFlowTheme.of(context).secondaryText,
      ),
    );
  }
}
