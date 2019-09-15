import 'package:meta/meta.dart';

import 'package:scanner/core/shared_services/bottom_navigation_service.dart';
import 'package:scanner/core/state/base_view_model.dart';

class BackIconWidgetModel extends BaseViewModel{
   final BottomNavigationService bottomNavService;

  BackIconWidgetModel({@required this.bottomNavService});

  void setIndex(int i){
    bottomNavService.setIndex(i);
  }

}