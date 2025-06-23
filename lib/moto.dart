import 'meio_transporte.dart';

class Moto implements MeioDeTransporte {
  @override
  String get nome => 'Moto';

  @override
  double calcularTempo(double distanciaEmKm) {
    return distanciaEmKm / 60;
  }

  @override
  double calcularCusto(double distanciaEmKm) {
    return distanciaEmKm * 0.16;
  }

  @override
  bool podeOperar({required bool chuva}) {
    return true;
  }
}
