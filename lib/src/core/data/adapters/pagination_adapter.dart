import 'package:teste_seguimentos_moteis/src/core/data/adapters/motel_adapter.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/pagination_entity.dart';

class PaginationAdapter{
  static PaginationEntity fromMap(Map map) {
    return PaginationEntity(
        page: map['pagina'],
        quantityPerPage: map['qtdPorPagina'],
        totalSuites: map['totalSuites'],
        totalMotels: map['totalMoteis'],
        radius: map['raio'],
        maxPages: map['maxPaginas'],
        content: List<dynamic>.from(map['moteis'])
            .map((e) => MotelAdapter.fromMap(e))
            .toList());
  }
}
