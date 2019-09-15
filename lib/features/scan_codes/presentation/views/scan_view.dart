import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:scanner/features/scan_codes/presentation/widgets/history_btn_widget.dart';

class ScanView extends StatelessWidget {
  ScanView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: _bottomAppBar(context),
        body: _pageViewStreamBuilder(context, null));
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
      stream: model.indexStream,
      initialData: 0,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        int index = snapshot.data;

        if (index == 0) {
          return Text("Camera");
          // return SearchResult(model: model,);
        } else {
          return Text("History");
          //  return HistoryView();
        }
      },
    );
  }
}
