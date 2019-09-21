import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/core/repository/scan_code_repository_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/raw_data.dart';

class GetRawDataUC extends Equatable {
  final IScanCodeRepository iScanCodeRepository;

  GetRawDataUC({
    @required this.iScanCodeRepository,
  }) : super([iScanCodeRepository]);

  Future<Either<IFailure, RawData>> getRawData(){
    return iScanCodeRepository.getRawData();
  }
}
