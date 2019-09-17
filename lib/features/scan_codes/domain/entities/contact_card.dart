import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ContactCard extends Equatable {
  final List<Tuple> content;

  ContactCard({
    @required this.content,
  }) : super([content]);



  Map<String,dynamic> toJson(){
     Map<String, dynamic> map = Map<String, dynamic>();

     if (this.content != null) {
      map['content'] = this.content.map((v) => v.toJson()).toList();
    }

     return map;
  }

  
  List<Tuple> fromJson(Map<String,dynamic> map){
    List<Tuple> list = List<Tuple>();
    if(map['content'] != null){
      
      map['content'].forEach((v) => list.add(Tuple.fromJson(v)));
    }

    return list;
  }

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