import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';
import 'package:scanner/core/error/exceptions.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/core/repository/scan_code_repository_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scandata_local_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scandata_scanner_data_source_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/barcode.dart';
import 'package:scanner/features/scan_codes/domain/entities/qrcode.dart';

class ScanCodeRepostory implements IScanCodeRepository {
  final IScanDataLocalDataSource iScanDataLocalDataSource;
  final IScannerDataSource iScanDataScannerDataSource;

  ScanCodeRepostory({
    @required this.iScanDataLocalDataSource,
    @required this.iScanDataScannerDataSource,
  });

  @override
  Future<Either<IFailure, ContactQrcode>> getContactCard() async {

    try {

      final contactCard = await iScanDataScannerDataSource.getContactCard();
      iScanDataLocalDataSource.saveContactToLocalStorage(contactCard);
      return Right(contactCard);

    } on CameraAccessDeniedException  {
      return Left(CameraAccessDeniedFailure());
    } on WrongFormatException  {
      return Left(WrongFormatFailure());
    } on UnknownException  {
      return Left(UnknownFailure());
    }
  }

  @override
  Future<Either<IFailure, Barcode>> getRawData() async {
   try {
      
      final rawData = await iScanDataScannerDataSource.getRawData();
      iScanDataLocalDataSource.saveRawToLocalStorage(rawData);
      return Right(rawData);

    } on CameraAccessDeniedException  {
      return Left(CameraAccessDeniedFailure());
    } on WrongFormatException  {
      return Left(WrongFormatFailure());
    } on UnknownException  {
      return Left(UnknownFailure());
    } on InvalidCodeException {
      return Left(InvalidCodeFailure());
    } on Exception {
      return Left(InvalidCodeFailure());
    }
  }
  
}
