
import 'package:provider/provider.dart';
import 'package:scanner/core/shared_services/bottom_navigation_service.dart';

/// Create List of SingleChildcloneablewidgets providerss

List<SingleChildCloneableWidget> providers = [
  ...independentServices,
  ...dependentServices,
  ...uiConsumeableProviders
];

/// Create List of classes/services which doesn't depend on any 

/// other service/provider


List<SingleChildCloneableWidget> independentServices = [
    Provider.value(
      value: BottomNavigationService(),
    )
];

/// Create List of providers/classes/services which depend on previously registered

/// providers


List<SingleChildCloneableWidget> dependentServices = [


  
];

/// Create List of providers which will be consumed by UI

/// providers


List<SingleChildCloneableWidget> uiConsumeableProviders = [
  
];