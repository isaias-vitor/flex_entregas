import 'meio_transporte.dart';

class Drone implements MeioDeTransporte {
  @override
  String get nome => 'Drone';

  @override
  double calcularTempo(double distanciaEmKm) {
    return distanciaEmKm / 80;
  }

  @override
  double calcularCusto(double distanciaEmKm) {
    return distanciaEmKm * 0.21;
  }

  @override
  bool podeOperar({required bool chuva}) {
    return !chuva;
  }
}
