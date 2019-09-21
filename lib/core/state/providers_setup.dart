
import 'package:provider/provider.dart';
import 'package:scanner/core/shared_services/bottom_navigation_service.dart';
import 'package:scanner/features/scan_codes/data/data_sources/scanner_data_source.dart';
import 'package:scanner/features/scan_codes/data/repository/scan_code_reposotory.dart';
import 'package:scanner/features/scan_codes/domain/usecase/get_rawdata_usecae.dart';

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
    ),
    Provider.value(
      value: ScannerDataSource(),
    ),
];

/// Create List of providers/classes/services which depend on previously registered

/// providers


List<SingleChildCloneableWidget> dependentServices = [

  ProxyProvider2<ScannerDataSource, Object, ScanCodeRepostory>(
    builder: (context, ScannerDataSource source, Object t, ScanCodeRepostory repo){
      return ScanCodeRepostory(iScanDataScannerDataSource: source, iScanDataLocalDataSource: t);
    }
  ),

  ProxyProvider<ScanCodeRepostory, GetRawDataUC>(
    builder: (context, ScanCodeRepostory repo, GetRawDataUC uc){
      return GetRawDataUC(iScanCodeRepository: repo);
    },
  )
  
];

/// Create List of providers which will be consumed by UI

/// providers


List<SingleChildCloneableWidget> uiConsumeableProviders = [
  
];