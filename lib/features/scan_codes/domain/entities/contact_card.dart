import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class ContactCard extends Equatable {
  final List<Tuple2> content;

  ContactCard({
    @required this.content,
  }) : super([content]);
}
