import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/core/repository/scan_code_repository_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/barcode.dart';
class GetRawDataUC extends Equatable {
  final IScanCodeRepository iScanCodeRepository;

  GetRawDataUC({
    @required this.iScanCodeRepository,
  }) : super([iScanCodeRepository]);

  Future<Either<IFailure, Barcode>> getRawData(){
    return iScanCodeRepository.getRawData();
  }
}
