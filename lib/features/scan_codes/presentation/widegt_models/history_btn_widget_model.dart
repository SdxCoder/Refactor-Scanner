import 'package:meta/meta.dart';

import '../../../../core/shared_services/bottom_navigation_service.dart';
import '../../../../core/state/base_view_model.dart';


class HistoryButtonWidgetModel extends BaseViewModel{
  final BottomNavigationService bottomNavService;

  HistoryButtonWidgetModel({@required this.bottomNavService});

  void setIndex(int i){
    bottomNavService.setIndex(i);
  }

}