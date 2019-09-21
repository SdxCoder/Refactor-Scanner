

import 'package:equatable/equatable.dart';

abstract class IFailure extends Equatable{
  IFailure([List properties = const []]) : super([properties]);
}

class WrongFormatFailure extends IFailure {}

class CameraAccessDeniedFailure extends IFailure {}

class UnknownFailure extends IFailure {}