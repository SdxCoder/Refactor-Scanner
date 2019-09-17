import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import 'package:scanner/core/error/failure_interface.dart';
import 'package:scanner/core/repository/contact_card_repository_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/local_data_source_interface.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scanner_data_source_interface.dart';
import 'package:scanner/features/scan_codes/domain/entities/contact_card.dart';

class ContactCardRepository implements IContactCardRepository {
  final ILocalContactCardDataSource iLocalContactCardDataSource;
  final IScannerContactCardDataSource iScannerContactCardDataSource;

  ContactCardRepository({
    @required this.iLocalContactCardDataSource,
    @required this.iScannerContactCardDataSource,
  });

  @override
  Future<Either<IFailure, ContactCard>> getContactCard() {
    // TODO: implement getContactCard
    return null;
  }
}
