import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:scanner/features/scan_codes/domain/entities/scanData_interface.dart';


abstract class Qrcode implements ScanData{}

class ContactQrcode extends Equatable implements Qrcode{
  final List<Tuple> content;

  ContactQrcode({
    @required this.content,
  }) : super([content]);


}

class TextQrcode extends Equatable implements Qrcode{
  final String data;

  TextQrcode({@required this.data}) : super([data]);
}

class Tuple extends Equatable{
  final String key;
  final String value;

  Tuple(this.key, this.value) : super([key, value]);

  factory Tuple.fromJson(Map<String, dynamic> map){
    return Tuple(map['key'], map['value']);
  }

  Map<String,dynamic> toJson(){
    final Map<String, dynamic> map = Map<String, dynamic>();

    map['key'] = this.key;
    map['value'] = this.value;

    return map;
  }

}