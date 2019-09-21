

import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';

abstract class ILocalDataSource{
  Future<bool> saveToLocalStorage(RawDataModel rawDataModel);
}