import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:teste_seguimentos_moteis/src/core/data/adapters/pagination_adapter.dart';
import 'package:teste_seguimentos_moteis/src/core/data/services/http/http_service.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/pagination_entity.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/entities/response_error_entity.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/repositories/motel_repository.dart';

class MotelRepositoryImpl extends MotelRepository {
  final HttpService http;
  late String hash;
  late String apiKey;
  late String baseUrl;
  MotelRepositoryImpl({
    required this.http,
  }) {
    baseUrl = 'https://www.jsonkeeper.com/b/';
  }

  @override
  Future<Either<ResponseErrorEntity, PaginationEntity>>
      getAllMotels() async {
    final response = await http.get(url: '${baseUrl}1IXK');

    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);

      if (body.isNotEmpty) {
        var result = body['data'];

        PaginationEntity pagination =
            PaginationAdapter.fromMap(result);

        return Right(pagination);
      } else {
        return Left(ResponseErrorEntity(message: "Error inesperado"));
      }
    } else {
      return Left(ResponseErrorEntity(message: "Error inesperado"));
    }
  }
}
