import 'package:geolocator/geolocator.dart';

import '../Resposta.dart';

class CaracteristicaLocalizacao extends Resposta {
  Position _position = new Position(
      accuracy: 0,
      altitude: 0,
      heading: 0,
      latitude: 0,
      longitude: 0,
      speed: 0,
      speedAccuracy: 0,
      timestamp: null);

  CaracteristicaLocalizacao(Position position) {
    _position = position;
  }

  Position getCoordenada() {
    return _position;
  }

  void setCoordenada(Position position) {
    _position = position;
  }
}
