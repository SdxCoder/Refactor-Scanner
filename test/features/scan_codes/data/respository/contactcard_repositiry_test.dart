

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:scanner/features/scan_codes/data/data_sources/local_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scanner_data_source_interface.dart';

class MockScannerContactCardDataSource extends Mock implements IScannerContactCardDataSource {}
class MockLocalContactDataSource extends Mock implements ILocalContactCardDataSource {}


void main(){
  IScannerContactCardDataSource iScannerContactCardDataSource;
  ILocalContactCardDataSource iLocalContactCardDataSource;

  setUp((){
    iScannerContactCardDataSource = MockScannerContactCardDataSource();
    iLocalContactCardDataSource = MockLocalContactDataSource();
  });

  
}