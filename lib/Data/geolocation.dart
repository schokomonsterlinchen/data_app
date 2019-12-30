import 'package:geolocator/geolocator.dart';

class PositionDetector{

  Position _position;

  PositionDetector();

  void currentPosition() async {
      _position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  }

  double get latitude => _position.latitude;
  double get longitude => _position.longitude;
  double get speed => _position.speed;
  DateTime get timestamp => _position.timestamp;
}