import 'dart:async';
import 'package:data_app/Data/geolocation.dart';
import 'package:data_app/datalist.dart';

Timer timer;
Entry entry;
int _counter = 0;

void initTimer() {
  timer = Timer.periodic(Duration(milliseconds: 10), (Timer t) => _tableEntry());
}

_tableEntry() {
  _counter++;
  PositionDetector positionDetector = new PositionDetector();
  positionDetector.currentPosition();

  double _accx = 0.0;
  double _accy = 0.0;
  double _accz = 0.0;
  double _rotx = 0.0;
  double _roty = 0.0;
  double _rotz = 0.0;
  DateTime _time = positionDetector.timestamp;
  double _lat = positionDetector.latitude;
  double _lon = positionDetector.longitude;
  
  Entry ent = new Entry(_counter, _time, _lat, _lon, _accx, _accy, _accz, _rotx, _roty, _rotz);
  entry = ent;

//TODO
}