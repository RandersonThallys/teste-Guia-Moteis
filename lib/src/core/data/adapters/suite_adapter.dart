import 'package:teste_seguimentos_moteis/src/core/data/adapters/category_item_adapter.dart';
import 'package:teste_seguimentos_moteis/src/core/data/adapters/item_adapter.dart';
import 'package:teste_seguimentos_moteis/src/core/data/adapters/period_adapter.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/suite_entity.dart';

class SuiteAdapter {
  static SuiteEntity fromMap(Map map) {
    return SuiteEntity(
        name: map['nome'],
        quatity: map['qtd'],
        showAvaliableQuantity: map['exibirQtdDisponiveis'],
        photos:
            List<dynamic>.from(map['fotos']).map((e) => e as String).toList(),
        items: List<dynamic>.from(map['itens'])
            .map((e) => ItemAdapter.fromMap(e))
            .toList(),
        categoryItems: List<dynamic>.from(map['categoriaItens'])
            .map((e) => CategoryItemAdapter.fromMap(e))
            .toList(),
        periods: List<dynamic>.from(map['periodos'])
            .map((e) => PeriodAdapter.fromMap(e))
            .toList());
  }
}
