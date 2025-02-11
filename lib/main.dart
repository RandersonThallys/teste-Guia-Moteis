import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:teste_seguimentos_moteis/src/app_module.dart';
import 'package:teste_seguimentos_moteis/src/core/app_widget.dart';

void main() {
  return runApp(ModularApp(module: AppModule(), child: const AppWidget()));
}
