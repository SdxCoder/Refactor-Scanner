import 'package:flutter/material.dart';
import 'package:scanner/core/shared_widgets/app_bar.dart';

class ScanResultView extends StatelessWidget {
  const ScanResultView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
          context,
          () {}, // TODO : Open scan camera
        ),
        body: Text("Scan Result"));
  }
}
