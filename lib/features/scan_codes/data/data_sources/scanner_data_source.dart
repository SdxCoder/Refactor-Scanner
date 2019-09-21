
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter/services.dart';
import 'package:scanner/core/error/exceptions.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scandata_scanner_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';

class ScannerDataSource implements IScannerDataSource {
  @override
  Future<String> scanCode() async {
  
    try{
      
       String result = await BarcodeScanner.scan();
       return result;

    } on PlatformException catch(e) {
      
      if(e.code == BarcodeScanner.CameraAccessDenied){
        throw CameraAccessDeniedException();
      }
      else{
        throw UnknownException();
      }

    } on FormatException catch(e) {
      throw WrongFormatException();
    } catch(e) {
      throw UnknownException();
    }


  }

  @override
  Future<ContactCardModel> getContactCard() async{
    // TODO: implement getContactCard
    return null;
  }

  @override
  Future<RawDataModel> getRawData() async {
    String data = await scanCode();
    return RawDataModel(data: data);
  }
}
