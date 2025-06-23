# FlexEntregas

## Descrição

FlexEntregas é um sistema de simulação de entregas desenvolvido em Dart, que permite comparar diferentes meios de transporte em diversos cenários. O sistema calcula o tempo estimado, o custo da entrega e verifica se o meio de transporte pode operar em determinadas condições climáticas, como em dias de chuva.

O projeto foi desenvolvido com foco em **orientação a objetos** e, principalmente, na aplicação do **polimorfismo**, que permite que diferentes meios de transporte sejam tratados de forma uniforme pelo simulador, mesmo que cada um possua regras específicas de funcionamento.

---

## Objetivo

O sistema tem como objetivo ser modular, extensível e de fácil manutenção. Ele permite adicionar novos meios de transporte sem a necessidade de alterar o código do simulador, bastando criar uma nova classe que implemente a interface definida.

---

## Estrutura do Projeto

- `meio_transporte.dart`  
  Define a **interface (classe abstrata)** que representa qualquer meio de transporte.

- `moto.dart`, `bicicleta.dart`, `drone.dart`, `cavalo.dart`  
  Implementações específicas dos meios de transporte, cada um com sua lógica própria de tempo, custo e restrições.

- `simulador.dart`  
  Classe responsável por executar a simulação utilizando qualquer objeto que implemente a interface `MeioDeTransporte`.

- `bin/flex_entregas.dart`  
  Arquivo principal de execução, que instancia os meios de transporte e executa as simulações.

---

## Funcionamento

Cada meio de transporte possui sua própria lógica:

- **Moto**  
  Pode operar mesmo em dias de chuva. Tem custo de combustível e velocidade média.

- **Bicicleta**  
  Pode operar em qualquer clima. Sem custo de combustível, mas com velocidade mais baixa.

- **Drone**  
  Não pode operar em dias de chuva. Tem alto custo por quilômetro, mas velocidade elevada.

- **Cavalo**  
  Não pode operar na chuva. Sem custo de combustível, com velocidade moderada.

---

## Polimorfismo Aplicado

O polimorfismo é aplicado por meio da interface `MeioDeTransporte`. O simulador não precisa saber detalhes de cada meio de transporte. Ele apenas espera um objeto que implemente essa interface.

Dessa forma, é possível executar o mesmo método `simular()` passando qualquer meio de transporte, e cada classe cuida da sua própria lógica internamente.

Exemplo:

```dart
SimuladorDeEntrega simulador = SimuladorDeEntrega(Drone());
simulador.simular(distanciaEmKm: 50.0, chuva: true);
