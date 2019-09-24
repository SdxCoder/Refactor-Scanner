import 'package:flutter_test/flutter_test.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';
import 'package:scanner/features/scan_codes/data/models/scanData_factory.dart';
import 'package:scanner/features/scan_codes/data/models/str_data_model.dart';
import 'package:scanner/features/scan_codes/data/models/url_data_model.dart';

import '../../../../fixtures/fixture.dart';

void main(){
  UrlDataModel urlDataModel;
  StringDataModel strDataModel;
  BarcodeModel barcodeModel;

  setUp((){
    strDataModel = StringDataModel(data: 'test');
    barcodeModel = BarcodeModel(barcode: '12345');
  });

  test('should return string data model',() async{
    final String data = "test";

    final result = scanDataFactory(data);

    expect(result, strDataModel);
  });

  test('should return barcode model',() async{
    final String data = "12345";

    final result = scanDataFactory(data);

    expect(result, barcodeModel);
  });


  
  test('should return url data model when url is valid',() async{

    urlDataModel = UrlDataModel(data: fixture('valid_url.txt'));

    final result = scanDataFactory(fixture('valid_url.txt'));

    expect(result, urlDataModel);
  });

  test('should return string data model when url is invalid',() async{

    urlDataModel = UrlDataModel(data: fixture('invalid_url.txt'));
    strDataModel = StringDataModel(data: fixture('invalid_url.txt'));
    
    final result = scanDataFactory(fixture('invalid_url.txt'));

    expect(result, strDataModel);
  });

}