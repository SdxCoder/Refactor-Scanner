import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

class RawData extends Equatable {
  final String data;

  RawData({
    @required this.data,
  }) : super([data]);
}
