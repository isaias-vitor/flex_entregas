import 'package:flex_entregas/moto.dart';
import 'package:flex_entregas/bicicleta.dart';
import 'package:flex_entregas/drone.dart';
import 'package:flex_entregas/cavalo.dart';
import 'package:flex_entregas/simulador.dart';

void main() {
  final distancia = 50.0;
  final chuva = true;

  var moto = SimuladorDeEntrega(Moto());
  var bicicleta = SimuladorDeEntrega(Bicicleta());
  var drone = SimuladorDeEntrega(Drone());
  var cavalo = SimuladorDeEntrega(Cavalo());

  print('\n');

  moto.simular(distanciaEmKm: distancia, chuva: chuva);
  bicicleta.simular(distanciaEmKm: distancia, chuva: chuva);
  drone.simular(distanciaEmKm: distancia, chuva: chuva);
  cavalo.simular(distanciaEmKm: distancia, chuva: chuva);
}
