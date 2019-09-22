

import 'package:equatable/equatable.dart';

abstract class IFailure extends Equatable{
  IFailure([List properties = const []]) : super([properties]);
}

class WrongFormatFailure extends IFailure {
  final String msg = "Scan Cancelled/Wrong Format";
}

class CameraAccessDeniedFailure extends IFailure {
  final String msg = "Camera Access Denied";
}

class UnknownFailure extends IFailure {
  final String msg = "Unknown Error";
}

class InvalidCodeFailure extends IFailure {
  final String msg = "Invalid Qr Code";
}