

import 'package:meta/meta.dart';
import 'package:scanner/features/scan_codes/data/models/contactcard_model.dart';
import 'package:scanner/features/scan_codes/domain/entities/qrcode.dart';

class VCardModel extends ContactQrcodeModel{

  VCardModel({@required List<Tuple> content}) : super(content: content);

  
}