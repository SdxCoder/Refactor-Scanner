import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:scanner/core/error/failure_interface.dart';

import 'package:scanner/core/repository/contact_card_repository_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/contact_card.dart';

class GetContcatCardUC extends Equatable {
  final IContactCardRepository iContactCardRepository;

  GetContcatCardUC({
   @required this.iContactCardRepository,
  }) : super([iContactCardRepository]);


  Future<Either<IFailure, ContactCard>> getContactCard(){
    return iContactCardRepository.getContactCard();
  }
}
