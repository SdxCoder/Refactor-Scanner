
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scanner_data_source.dart';
import 'package:scanner/features/scan_codes/data/models/str_data_model.dart';

import '../../../../fixtures/fixture.dart';


class MockScannerDataSource extends Mock implements ScannerDataSource {} 

void main(){

  MockScannerDataSource mockScannerDataSource;

  setUp((){
    mockScannerDataSource = MockScannerDataSource();
    
  });
  test('should return string  when Barcode.scan() is called ', () async {
    // arrange
    final result = fixture('valid_string_scanResult.txt');

    bool isString = result is String;

    expect(isString, true);
  });

  final data = fixture('valid_string_scanResult.txt');
  final StringDataModel stringDataModel = StringDataModel(data: data);

  //  test('should return StringDataModel when getRawData() is called with string', () async {
  //   // arrange
  //   when(mockScannerDataSource.getRawData()).thenAnswer((_) async{
  //     return stringDataModel;
  //   });

  //   // act
  //   verify(mockScannerDataSource.scanCode());
    
  // });

  
}