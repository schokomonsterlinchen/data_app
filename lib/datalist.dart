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
  DateTime _time;
  double _lat;
  double _lon;
  double _accx;
  double _accy;
  double _accz;
  double _rotx;
  double _roty;
  double _rotz;
  
  Entry(this._counter, this._time, this._lat, this._lon, this._accx, this._accy, this._accz, this._rotx, this._roty, this._rotz);

  
  int get counter =>_counter;
  DateTime get time => _time;
  double get latitude => _lat;
  double get longitude => _lon;
  double get accelerationX => _accx;
  double get accelerationY => _accy;
  double get accelerationZ => _accz;
  double get rotationX => _rotx;
  double get rotationY => _roty;
  double get rotationZ => _rotz;
}