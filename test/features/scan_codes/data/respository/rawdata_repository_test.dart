import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:scanner/features/scan_codes/data/data_sources/local_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scanner_data_source_interface.dart';


class MockScannerRawDataSource extends Mock implements IScannerRawDataSource {}
class MockLocalRawDataSource extends Mock implements ILocalRawDataSource {}


void main(){
  IScannerRawDataSource iScannerRawDataSource;
  ILocalRawDataSource iLocalRawDataSource;

  setUp((){
    iScannerRawDataSource = MockScannerRawDataSource();
    iLocalRawDataSource = MockLocalRawDataSource();
  });

  
}