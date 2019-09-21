import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';
import 'package:scanner/features/scan_codes/data/models/url_data_model.dart';
import 'package:scanner/features/scan_codes/domain/entities/scanData_interface.dart';
import 'package:validators/validators.dart';

ScanData scanDataFactory(String data) {
  if (isURL(data)) {
    return UrlDataModel(data: data);
  } else {
    return RawDataModel(data: data);
  }
}
