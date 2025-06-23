import 'meio_transporte.dart';

class Cavalo implements MeioDeTransporte {

  @override
  String get nome => 'Cavalo';

  @override
  double calcularTempo(double distanciaEmKm) {
    return distanciaEmKm / 30;
  }

  @override
  double calcularCusto(double distanciaEmKm) {
    return 0;
  }

  @override
  bool podeOperar({required bool chuva}) {
    return !chuva;
  }
}
