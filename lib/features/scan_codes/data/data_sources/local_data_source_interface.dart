
import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';

abstract class ILocalRawDataSource{
  Future<bool> saveToLocalStorage(RawDataModel rawDataModel);
}


abstract class ILocalContactCardDataSource{
  Future<bool> saveToLocalStorage(ContactCardModel  contactCardModel);
}


