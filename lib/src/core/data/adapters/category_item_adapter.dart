import 'package:teste_seguimentos_moteis/src/core/interactor/entities/category_item_entity.dart';

class CategoryItemAdapter {
  static CategoryItemEntity fromMap(Map map) {
    return CategoryItemEntity(
      name: map['nome'],
      icon: map['icone'],
    );
  }
}
