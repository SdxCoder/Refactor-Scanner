import 'package:flutter_test/flutter_test.dart';
import 'package:scanner/features/scan_codes/data/models/url_data_model.dart';

import '../../../../fixtures/fixture.dart';

void main() {
  final UrlDataModel urlDataModel = UrlDataModel(data: fixture('valid_url.txt'));

 
    test('should create url data model ', () async {
      final model = UrlDataModel(data:  fixture('valid_url.txt'));

      expect(model, urlDataModel);
    });

    // test('should create url data model from url string', () async {
    //   final String cleanUrl = urlDataModel.getCleanUrl();
    //   final model = UrlDataModel.fromUrlString(cleanUrl);
      
      
    //   expect(model, urlDataModel);
      
    // });

 //  final UrlDataModel urlDataModel2 = UrlDataModel(data: fixture('dirty_url.txt'));

  //  test('should return a clean string', () async {
  //     urlDataModel2.getCleanUrl();
  //     final actual =  urlDataModel2.data;
  //     final expected = fixture('clean_url.txt');

  //     expect(actual, expected);
  //   });
}
