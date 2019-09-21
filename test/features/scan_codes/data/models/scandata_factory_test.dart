import 'package:flutter_test/flutter_test.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';
import 'package:scanner/features/scan_codes/data/models/scanData_factory.dart';
import 'package:scanner/features/scan_codes/data/models/url_data_model.dart';

import '../../../../fixtures/fixture.dart';

void main(){
  RawDataModel rawdatamodel;
  UrlDataModel urlDataModel;

  setUp((){
    rawdatamodel = RawDataModel(data: 'test');
  });

  test('should return raw data model',() async{
    final String data = "test";

    final result = scanDataFactory(data);

    expect(result, rawdatamodel);
  });


  
  test('should return url data model from valid url',() async{

    urlDataModel = UrlDataModel(data: fixture('valid_url.txt'));

    final result = scanDataFactory(fixture('valid_url.txt'));

    expect(result, urlDataModel);
  });

  test('should return raw data model from invalid url',() async{

    urlDataModel = UrlDataModel(data: fixture('invalid_url.txt'));
    rawdatamodel = RawDataModel(data: fixture('invalid_url.txt'));
    
    final result = scanDataFactory(fixture('invalid_url.txt'));

    expect(result, rawdatamodel);
  });

}