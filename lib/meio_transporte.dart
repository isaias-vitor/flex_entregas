abstract class MeioDeTransporte{
    String get nome;

    //Calcula o tempo estimado da entrega em horas
    double calcularTempo(double distanciaEmKm);

    //Calcula o custo da entrega (caso aplicável)
    double calcularCusto(double distanciaEmKm);

    // Verifica se o transporte pode operar nas condições climáticas informadas.
    bool podeOperar({required bool chuva});

}