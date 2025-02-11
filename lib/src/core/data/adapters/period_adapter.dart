import 'package:teste_seguimentos_moteis/src/core/interactor/entities/period_entity.dart';

class PeriodAdapter {
  static PeriodEntity fromMap(Map map) {
    var discount = map['desconto'] != null ? map['desconto']['desconto'] : 0.0;

    return PeriodEntity(
        formattedTime: map['tempoFormatado'],
        time: map['tempo'],
        cost: map['valor'],
        totalCost: map['valorTotal'],
        hasCourtesy: map['temCortesia'],
        discount: discount);
  }
}
