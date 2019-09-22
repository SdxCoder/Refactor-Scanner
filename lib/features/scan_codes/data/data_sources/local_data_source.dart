import 'package:scanner/features/scan_codes/data/data_sources/scandata_local_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';

class LocalDataSource implements IScanDataLocalDataSource{
  @override
  Future<void> saveContactToLocalStorage(ContactCardModel contactCardModel) {
    // TODO: implement saveContactToLocalStorage
    return null;
  }

  @override
  Future<void> saveRawToLocalStorage(RawDataModel rawDataModel) {
    // TODO: implement saveRawToLocalStorage
    return null;
  }

}