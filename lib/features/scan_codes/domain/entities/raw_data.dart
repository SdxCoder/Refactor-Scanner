import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:scanner/features/scan_codes/domain/entities/scanData_interface.dart';

class RawData extends Equatable implements ScanData {
  final String data;

  RawData({
    @required this.data,
  }) : super([data]);
}
