import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:provider/provider.dart';
import 'package:scanner/core/shared_widgets/app_bar.dart';
import 'package:scanner/core/shared_widgets/base_widget.dart';
import 'package:scanner/features/history/presentation/views/history_view.dart';
import 'package:scanner/features/scan_codes/presentation/view_models/scan_view_model.dart';
import 'package:scanner/features/scan_codes/presentation/views/scan_result_view.dart';


import '../../../../features/scan_codes/presentation/widgets/history_btn_widget.dart';

class ScanView extends StatelessWidget {
  ScanView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      model: ScanViewModel(bottomNavService: Provider.of(context)),
      child: null,
      onModelReady: null,
      builder: (context, model, child){
        return  Scaffold(
        bottomNavigationBar: _bottomAppBar(context),
        body: _pageViewStreamBuilder(context, model));
   
      },
    );

     
  }

  Widget _bottomAppBar(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 95,
        child: Row(
          children: <Widget>[
            InkWell(
              splashColor: Theme.of(context).splashColor,
              highlightColor: Theme.of(context).highlightColor,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                      color: Theme.of(context).accentColor,
                      width: 70,
                      height: 95,
                      child: Icon(MdiIcons.barcode, color: Colors.white)),
                ],
              ),
            ),
            HistoryBtnWidget()
          ],
        ),
      ),
    );
  }

  Widget _pageViewStreamBuilder(BuildContext context, model) {
    return StreamBuilder(
      stream: model.bottomNavService.indexStream,
      initialData: 0,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        int index = snapshot.data;

        if (index == 0) {
          return ScanResultView();
        } else {
           return HistoryView();
        }
      },
    );
  }
}

