
import 'package:meta/meta.dart';
import 'package:scanner/features/scan_codes/domain/entities/qrcode.dart';

class ContactQrcodeModel extends ContactQrcode{

  ContactQrcodeModel({@required List<Tuple> content}) : super(content: content);

  factory ContactQrcodeModel.fromJson(Map<String, dynamic> json){
    List<Tuple> list = List<Tuple>();
    json['content'].forEach((v) => list.add(Tuple.fromJson(v)));

    return ContactQrcodeModel(
      content: list
    );
  }

  
  Map<String,dynamic> toJson(){
     Map<String, dynamic> map = Map<String, dynamic>();

     if (this.content != null) {
      map['content'] = this.content.map((v) => v.toJson()).toList();
    }

     return map;
  }

}