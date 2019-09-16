
import 'package:dartz/dartz.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/raw_data.dart';

abstract class IRawDataRepository{
  Future<Either<IFailure, RawData>> getRawData();
}