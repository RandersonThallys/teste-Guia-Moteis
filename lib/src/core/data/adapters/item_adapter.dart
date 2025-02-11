import 'package:teste_seguimentos_moteis/src/core/interactor/entities/item_entity.dart';

class ItemAdapter {
  static ItemEntity fromMap(Map map) {
    return ItemEntity(name: map['nome']);
  }
}
