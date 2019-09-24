import 'package:dartz/dartz.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/barcode.dart';
import 'package:scanner/features/scan_codes/domain/entities/qrcode.dart';

abstract class IScanCodeRepository{
  Future<Either<IFailure, ContactQrcode>> getContactCard();
  Future<Either<IFailure, Barcode>> getRawData();
}