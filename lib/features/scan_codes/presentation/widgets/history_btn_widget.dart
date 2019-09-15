import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner/features/scan_codes/presentation/widegt_models/history_btn_widget_model.dart';
import '../../../../core/shared_widgets/base_widget.dart';

class HistoryBtnWidget extends StatelessWidget {
  const HistoryBtnWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      model: HistoryButtonWidgetModel(bottomNavService: Provider.of(context)),
      child: null,
      onModelReady: null,
      builder: (context, model, child){
        return _historyBtn(context, model);
      },
    );
  }

  Widget _historyBtn(BuildContext context, model){
    return InkWell(
      splashColor: Theme.of(context).splashColor,
      highlightColor: Theme.of(context).highlightColor,
      onTap: () {
        model.setIndex(1);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width - 70.0,
            color: Theme.of(context).buttonColor,
            height: 95,
            child: Row(
              children: <Widget>[
                SizedBox(width: 16),
                Text("Scan history"),
                Spacer(),
                Icon(Icons.history),
                SizedBox(width: 16),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
