
import 'package:meta/meta.dart';
import 'package:scanner/features/scan_codes/domain/entities/contact_card.dart';

class ContactCardModel extends ContactCard{

  ContactCardModel({@required List<Tuple> content}) : super(content: content);

  factory ContactCardModel.fromJson(Map<String, dynamic> json){
    List<Tuple> list = List<Tuple>();
    json['content'].forEach((v) => list.add(Tuple.fromJson(v)));

    return ContactCardModel(
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