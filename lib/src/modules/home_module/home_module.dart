import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_seguimentos_moteis/src/core/data/repositories/motel_repository_impl.dart';
import 'package:teste_seguimentos_moteis/src/core/data/services/http/http_service.dart';
import 'package:teste_seguimentos_moteis/src/core/data/services/http/http_service_impl.dart';
import 'package:teste_seguimentos_moteis/src/core/interactor/repositories/motel_repository.dart';
import 'package:teste_seguimentos_moteis/src/modules/home_module/ui/controllers/home_controller.dart';
import 'package:teste_seguimentos_moteis/src/modules/home_module/ui/pages/home_page.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.add<HttpService>(HttpServiceImp.new);
    i.addLazySingleton<MotelRepository>(MotelRepositoryImpl.new);
    i.addLazySingleton(HomeController.new);
  }

  @override
  void routes(r) {
    r.child(
      Modular.initialRoute,
      child: (context) => const HomePage(),
    );
  }
}
