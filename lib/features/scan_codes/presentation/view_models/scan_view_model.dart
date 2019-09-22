import 'package:meta/meta.dart';
import 'package:scanner/features/scan_codes/domain/usecase/get_rawdata_usecae.dart';

import '../../../../core/shared_services/bottom_navigation_service.dart';
import '../../../../core/state/base_view_model.dart';

class ScanViewModel extends BaseViewModel {
  final BottomNavigationService bottomNavService;
  final GetRawDataUC getRawDataUC;

  ScanViewModel({this.getRawDataUC, @required this.bottomNavService});


  var result;

  

  Future getData() async {
    var either = await this.getRawDataUC.getRawData();
    setBuzy(true);
    result = either.fold(
      (failure) => failure,
      (rawdata) => rawdata,
    );
    setBuzy(false);
  }
}
