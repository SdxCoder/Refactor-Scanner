


import 'package:dartz/dartz.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/core/repository/scan_code_repository_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/contact_card.dart';
import 'package:scanner/features/scan_codes/domain/entities/raw_data.dart';

class ScanCodeRepostory implements IScanCodeRepository{
  


  @override
  Future<Either<IFailure, ContactCard>> getContactCard() {
    // TODO: implement getContactCard
    return null;
  }

  @override
  Future<Either<IFailure, RawData>> getRawData() {
    // TODO: implement getRawData
    return null;
  }

}