

import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/raw_data.dart';
import 'package:scanner/features/scan_codes/domain/usecase/get_rawdata_usecae.dart';

import '../../../../core/shared_services/bottom_navigation_service.dart';
import '../../../../core/state/base_view_model.dart';

class ScanViewModel extends BaseViewModel {
  final BottomNavigationService bottomNavService;
  final GetRawDataUC getRawDataUC;

  ScanViewModel( {this.getRawDataUC,@required this.bottomNavService});



  getData() async {
    var either = await this.getRawDataUC.getRawData();

    if(either is IFailure){
      print("Error");
    }
    
  
  }


}

