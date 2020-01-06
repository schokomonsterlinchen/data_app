import 'dart:async';
import 'package:data_app/Data/geolocation.dart';
import 'package:data_app/datalist.dart';
import 'package:geolocator/geolocator.dart';

Timer timer;
Entry entry;
int _counter = 0;
Position _currentPosition;
PositionDetector positionDetector;

void initTimer() {
  positionDetector = new PositionDetector();
  positionDetector.startPositionStream();
  _tableEntry();
  timer = Timer.periodic(Duration(seconds: 10), (Timer t) => _tableEntry());
}

_tableEntry() {
  _counter++;
  _currentPosition = positionDetector.position;


  //TODO
  double _accx = 0.0;
  double _accy = 0.0;
  double _accz = 0.0;
  double _rotx = 0.0;
  double _roty = 0.0;
  double _rotz = 0.0;

  Entry ent = new Entry(_counter, _currentPosition, _accx, _accy, _accz, _rotx, _roty, _rotz);
  entry = ent;

}