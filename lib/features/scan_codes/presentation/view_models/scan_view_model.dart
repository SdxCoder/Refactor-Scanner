import 'package:meta/meta.dart';

import '../../../../core/shared_services/bottom_navigation_service.dart';
import '../../../../core/state/base_view_model.dart';

class ScanViewModel extends BaseViewModel {
  final BottomNavigationService bottomNavService;

  ScanViewModel({@required this.bottomNavService});
  
}

