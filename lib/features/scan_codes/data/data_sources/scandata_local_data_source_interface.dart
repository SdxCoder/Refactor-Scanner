

import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';

abstract class IScanDataLocalDataSource{
  Future<void> saveRawToLocalStorage(RawDataModel rawDataModel);
  Future<void> saveContactToLocalStorage(ContactCardModel contactCardModel);
}