import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/core/shared_widgets/app_bar.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';
import 'package:scanner/features/scan_codes/data/models/url_data_model.dart';

class ScanResultView extends StatelessWidget {
  final model;
  const ScanResultView({Key key, this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar(
          context,
          () async {
           await model.getData();
          }, 
        ),
        body: (model.result != null) ? _buildResult(context, model) :
        Text("")
        );
  }

   Widget _buildResult(BuildContext context, model) {
    if(model.result is IFailure){
      return _showError(context, model);
    }
    else if(model.result is UrlDataModel){
      return Text(model.result.data);
    }
    else if(model.result is RawDataModel){
      return _showRaw(context, model);
    }
    
  }


  Widget _showRaw(BuildContext context, model) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 16 * 3.0,
          ),
          Text(
            model.result.data,
            style: Theme.of(context).textTheme.body1,
          ),
          SizedBox(
            height: 16 * 2.0,
          ),
          InkWell(
            onTap: () {
              Clipboard.setData(new ClipboardData(text: model.result.data))
                  .then((v) {
               // TODO : NotificationService.textCopied(context, model.result['raw']);
              });
            },
            child: Column(
              children: <Widget>[
                Image.asset(
                  'images/copy.png',
                  width: 32,
                  height: 32,
                ),
                SizedBox(
                  height: 3,
                ),
                Text(
                  'Copy',
                  style: Theme.of(context).textTheme.body1,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  
  Widget _showError(BuildContext context, model) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 16 * 3.0,
          ),
          Text(
            "No Results",
            style: Theme.of(context).textTheme.body1,
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            model.result.msg,
            style: Theme.of(context).textTheme.body1,
          ),
        ],
      ),
    );
  }

  
}
