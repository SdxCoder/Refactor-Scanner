import 'dart:io';
import 'package:flutter/material.dart';
import 'package:scanner/features/history/presentation/widgets/back_icon_widget.dart';


class HistoryView extends StatefulWidget {
  HistoryView({Key key}) : super(key: key);

  @override
  _HistoryViewState createState() => _HistoryViewState();
}

class _HistoryViewState extends State<HistoryView> with SingleTickerProviderStateMixin{
  
   TabController _tabController;
   int _currentIndex = 0;

   Widget _appBar(BuildContext context, model) {

    final AppBar appBar = AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(height: 10,),
          Image.asset(
            'images/erply-logo.png',
            width: 83,
            height: 22,
          ),
           Container(
            padding: EdgeInsets.only(top: 5),
            alignment: Alignment.bottomCenter,
            child: Text(
              "v.2.01",
              style: Theme.of(context).textTheme.overline,
            ))
        ],
      ),
      centerTitle: true,
      leading: BackIconWidget(),
      elevation: 0,
      actions: <Widget>[
      //  DownloadButton(index: _currentIndex,),
      ],
      bottom: TabBar(
        controller: _tabController,
        labelStyle: Theme.of(context).textTheme.display2,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorColor: Theme.of(context).accentColor,
        indicatorPadding: EdgeInsets.only(left: 8, right: 8),
        tabs: <Widget>[Text("Barcodes"), Text("QR Codes")],
      ),
    );
    if (Platform.isIOS) {
      return SafeArea(
        child: appBar,
      );
    }
    return appBar;
  }

 

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync:this, length: 2);
    _tabController.addListener(_handleIndex);
    
  }

  @override
  void dispose() {
       _tabController.removeListener(_handleIndex);
    _tabController.dispose();
 
    super.dispose();
  }


   _handleIndex(){
      setState(() {
         _currentIndex = _tabController.index;
      });
    }


  @override
  Widget build(BuildContext context) {
    print(_tabController.index);
    return _historyView(context, null);
  }

  Widget _historyView(BuildContext context, model) {
    return Material(
    child: Scaffold(
      appBar: _appBar(context, model),
      body: Container(
        padding: const EdgeInsets.only(top: 16 * 2.0),
        child: TabBarView(
          controller: _tabController,
          children: <Widget>[
            Text("a"),
            Text("s")
          //  BarCodeHistoryView(model: model),
           // QrCodesView(model: model),
          ],
        ),
      ),
    ),
  );
  }
}
