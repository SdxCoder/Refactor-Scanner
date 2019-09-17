

import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/data/models/raw_data_model.dart';

abstract class IScannerRawDataSource{
  /// throws []
  Future<RawDataModel> getRawData();
}

abstract class IScannerContactCardDataSource{
  /// throws [InvalidCode Exception] , [IndexOutofBound Exception] , [etc....]
  Future<ContactCardModel> getContactCard();
}