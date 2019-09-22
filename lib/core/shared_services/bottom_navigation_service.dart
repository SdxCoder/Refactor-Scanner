
import 'dart:async';


class BottomNavigationService{
  
  StreamController<int> _streamController = new StreamController<int>();

  Stream<int> get indexStream => _streamController.stream;


  void setIndex(int i) {
    _streamController.sink.add(i);
  }

  void dispose(){
    _streamController.close();
  }

}