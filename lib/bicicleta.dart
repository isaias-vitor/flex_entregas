import 'meio_transporte.dart';

class Bicicleta implements MeioDeTransporte {
  @override
  String get nome => 'Bicicleta';

  @override
  double calcularTempo(double distanciaEmKm) {
    return distanciaEmKm / 20;
  }

  @override
  double calcularCusto(double distanciaEmKm) {
    return 0;
  }

  @override
  bool podeOperar({required bool chuva}) {
    return true;
  }
}
