

import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';

abstract class IScannerDataSource{
   Future<RawDataModel> getRawData();
   Future<ContactCardModel> getContactCard();
}