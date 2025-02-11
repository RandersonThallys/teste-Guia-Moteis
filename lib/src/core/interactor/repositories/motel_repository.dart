import 'package:dartz/dartz.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/pagination_entity.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/response_error_entity.dart';

abstract class MotelRepository {
  Future<Either<ResponseErrorEntity, PaginationEntity>>
      getAllMotels();
}
