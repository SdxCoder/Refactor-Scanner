
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

    } on FormatException {
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
    _split();
   
    return scanDataFactory(data);
  }

  void  _extractData(data){
     if(data != null){
       throw Exception();
    }
  }


  void _split(){
    List data = ['a', 'b'];

    try{
       print(data[2]);
    } on Exception catch(e){
      throw Exception();
    }

   
  }
}
