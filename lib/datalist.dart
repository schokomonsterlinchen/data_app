// Einträge:
//   > Counter
//   > Timestamp
//   > Latitude
//   > Longitude
//   > Acceleration x
//   > Acceleration y
//   > Acceleration z
//   > Rotation x
//   > Rotation y
//   > Rotation z

import 'package:geolocator/geolocator.dart';

class Table {
  List<Entry> _table;

  Table() {
    _table = new List();
  }


  void add(Entry newEntry) {
    _table.add(newEntry);
  }
}




class Entry {
  int _counter;
  Position _position;
  double _accx;
  double _accy;
  double _accz;
  double _rotx;
  double _roty;
  double _rotz;
  
  Entry(this._counter, this._position, this._accx, this._accy, this._accz, this._rotx, this._roty, this._rotz);

  
  int get counter =>_counter;
  Position get position => _position;
  double get accelerationX => _accx;
  double get accelerationY => _accy;
  double get accelerationZ => _accz;
  double get rotationX => _rotx;
  double get rotationY => _roty;
  double get rotationZ => _rotz;
}