
import 'package:dartz/dartz.dart';
import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/contact_card.dart';

abstract class IContactCardRepository{
  Future<Either<IFailure, ContactCard>> getContactCard();
}