import 'package:teste_seguimentos_moteis/src/core/interactor/entities/category_item_entity.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/item_entity.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/period_entity.dart';

class SuiteEntity {
  final String name;
  final int quatity;
  final bool showAvaliableQuantity;
  final List<String> photos;
  final List<ItemEntity> items;
  final List<CategoryItemEntity> categoryItems;
  final List<PeriodEntity> periods;

  SuiteEntity({
    required this.name,
    required this.quatity,
    required this.showAvaliableQuantity,
    required this.photos,
    required this.items,
    required this.categoryItems,
    required this.periods,
  });
}
