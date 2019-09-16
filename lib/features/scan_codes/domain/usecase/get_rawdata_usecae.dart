import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/core/repository/raw_data_repository_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/raw_data.dart';

class GetRawDataUC extends Equatable {
  final IRawDataRepository iRawDataRepository;

  GetRawDataUC({
    @required this.iRawDataRepository,
  }) : super([iRawDataRepository]);

  Future<Either<IFailure, RawData>> getRawData(){
    return iRawDataRepository.getRawData();
  }
}
