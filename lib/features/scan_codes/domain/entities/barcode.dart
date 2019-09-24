import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:scanner/features/scan_codes/domain/entities/scanData_interface.dart';

class Barcode extends Equatable implements ScanData {
  final String barcode;

  Barcode({
    @required this.barcode,
  }) : super([barcode]);
}
