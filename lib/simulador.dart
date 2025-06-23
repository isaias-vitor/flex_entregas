import 'meio_transporte.dart';

class SimuladorDeEntrega {
  final MeioDeTransporte transporte;

  SimuladorDeEntrega(this.transporte);

  void simular({required double distanciaEmKm, required bool chuva}) {
    print('Simulação com ${transporte.nome}');

    // Dependendo do veículo, não continuamos, pois não poderá operar na chuva
    if (!transporte.podeOperar(chuva: chuva)) {
      print('Não pode operar na chuva!');
      print('==========================================\n');
      return;
    }

    final tempo = transporte.calcularTempo(distanciaEmKm);
    final custo = transporte.calcularCusto(distanciaEmKm);

    print('Distância: ${distanciaEmKm}');
    print('Tempo estimado: ${tempo.toStringAsFixed(2)} horas');
    print('Custo estimado: R\$ ${custo.toStringAsFixed(2)}');
    print('==========================================\n');

  }
}
