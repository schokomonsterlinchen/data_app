import 'dart:async';

import 'package:geolocator/geolocator.dart';

class PositionDetector{

  Position _position;

  PositionDetector();

  startPositionStream() {
    var geolocator = Geolocator();
    var locationOptions = LocationOptions(accuracy: LocationAccuracy.high, distanceFilter: 10);

    StreamSubscription<Position> positionStream = geolocator.getPositionStream(locationOptions).listen(
    (Position position) {
        _position = position;
    });
  }


  Position get position => _position;

}