import 'package:flutter_test/flutter_test.dart';
import 'package:teste_seguimentos_moteis/src/core/data/repositories/motel_repository_impl.dart';
import 'package:teste_seguimentos_moteis/src/core/data/services/http/http_service.dart';
import 'package:teste_seguimentos_moteis/src/core/data/services/http/http_service_impl.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/repositories/motel_repository.dart';

void main() {
  test('should return the right side', () async {
    HttpService http = HttpServiceImp();
    MotelRepository repository = MotelRepositoryImpl(http: http);

    var result = await repository.getAllMotels();

    expect(result.isRight(), true);
  });

  test('should return content not null and isnotempty', () async {
    HttpService http = HttpServiceImp();
    MotelRepository repository = MotelRepositoryImpl(http: http);

    var result = await repository.getAllMotels();
    var content;
    result.fold(
        (response) => content = null, (response) => content = response.content);
    expect(content != null && content.isNotEmpty, true);
  });
}
