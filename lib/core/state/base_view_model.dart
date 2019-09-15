import 'package:flutter/widgets.dart';

class BaseViewModel extends ChangeNotifier{
  bool _busy = false;
  bool get busy => _busy;


  void setBuzy(bool value){
    _busy = value;
    notifyListeners();
  }
} 