

import 'package:meta/meta.dart';
import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/domain/entities/contact_card.dart';

class MeCardModel extends ContactCardModel{

  MeCardModel({@required List<Tuple> content}) : super(content: content);
}