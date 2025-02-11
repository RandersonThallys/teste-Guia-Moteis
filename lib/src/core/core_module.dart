
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_seguimentos_moteis/src/core/data/services/http/http_service.dart';
import 'package:teste_seguimentos_moteis/src/core/data/services/http/http_service_impl.dart';
import 'package:teste_seguimentos_moteis/src/core/ui/app_theme.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(i) {
    i.addInstance(AppTheme());
    i.add<HttpService>(HttpServiceImp.new);
  }
}
