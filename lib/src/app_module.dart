
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_seguimentos_moteis/src/core/core_module.dart';
import 'package:teste_seguimentos_moteis/src/modules/home_module/home_module.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  List<Module> get imports => [CoreModule()];

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
