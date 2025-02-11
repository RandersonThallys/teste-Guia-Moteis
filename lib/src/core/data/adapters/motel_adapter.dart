import 'package:teste_seguimentos_moteis/src/core/data/adapters/suite_adapter.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/motel_entiy.dart';

class MotelAdapter {
  static MotelEntity fromMap(Map map) {
    return MotelEntity(
        tradeName: map['fantasia'],
        logoUrl: map['logo'],
        neighborhood: map['bairro'],
        distance: map['distancia'],
        quantityFavorites: map['qtdFavoritos'],
        amountReviews: map['qtdAvaliacoes'],
        average: map['media'],
        suites: List<dynamic>.from(map['suites'])
            .map((e) => SuiteAdapter.fromMap(e))
            .toList());
  }
}
