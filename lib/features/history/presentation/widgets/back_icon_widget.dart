import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner/core/shared_widgets/base_widget.dart';
import 'package:scanner/features/history/presentation/widget_models/back_icon_widget_model.dart';

class BackIconWidget extends StatelessWidget {
  const BackIconWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      model: BackIconWidgetModel(bottomNavService: Provider.of(context)),
      onModelReady: null,
      child: null,
      builder: (context, model, child) {
        return IconButton(
          icon: Icon(Icons.navigate_before),
          iconSize: 32,
          onPressed: () {
              model.setIndex(0);
          },
        );
      },
    );
  }
}
