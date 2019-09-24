
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';
import 'package:scanner/features/scan_codes/data/models/str_data_model.dart';
import 'package:scanner/features/scan_codes/data/models/url_data_model.dart';
import 'package:scanner/features/scan_codes/domain/entities/qrcode.dart';
import 'package:scanner/features/scan_codes/domain/entities/scanData_interface.dart';
import 'package:validators/validators.dart';

ScanData scanDataFactory(String data, {List<Tuple> content}) {
  if (isURL(data)) {
     return UrlDataModel(data: data);
  } 

  else if(isNumeric(data)){
    return BarcodeModel(barcode: data);
  }
  else {
    return StringDataModel(data: data);
  }
}

bool isNumeric(String s){
  try{
    int.parse(s);
    return true;
  } on Exception {
    return false;
  }
}
