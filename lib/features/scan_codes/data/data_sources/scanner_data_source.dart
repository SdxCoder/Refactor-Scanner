import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:scanner/core/error/exceptions.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scandata_scanner_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';
import 'package:scanner/features/scan_codes/data/models/scanData_factory.dart';

class ScannerDataSource implements IScannerDataSource {
  @override
  Future<String> scanCode() async {
    String result;
    _exceptionHandler(() async {
      result = await BarcodeScanner.scan();
    });

    return result;
  }

  @override
  Future<ContactQrcodeModel> getContactCard() async {
    String data = await scanCode();

    // Make a fixure and use that to test

    return scanDataFactory(data);
  }

  @override
  Future<BarcodeModel> getRawData() async {
    String data = await scanCode();
    return scanDataFactory(data);
  }

  ContactQrcodeModel _extractData(String result) {}

  void _exceptionHandler(Function body) {
    try {
      body();
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        throw CameraAccessDeniedException();
      } else {
        throw UnknownException();
      }
    } on FormatException {
      throw WrongFormatException();
    } on Error {
      throw InvalidCodeException();
    } catch (e) {
      throw UnknownException();
    }
  }
}
