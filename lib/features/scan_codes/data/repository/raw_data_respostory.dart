import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/core/repository/raw_data_repository_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/local_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scanner_data_source_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/raw_data.dart';

class RawDataRepository implements IRawDataRepository {
  final ILocalRawDataSource iLocalRawDataSource;
  final IScannerRawDataSource iScannerRawDataSource;

  RawDataRepository({
    @required this.iLocalRawDataSource,
    @required this.iScannerRawDataSource,
  });

  @override
  Future<Either<IFailure, RawData>> getRawData() {
    // TODO: implement getRawData
    return null;
  }
}
