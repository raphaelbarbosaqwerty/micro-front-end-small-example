import 'package:flutter_modular/flutter_modular.dart';
import 'package:module_home/main.dart';
import 'package:module_login/main.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/home',
      module: HomeModule(),
    ),
    ModuleRoute(
      Modular.initialRoute,
      module: LoginModule(),
    ),
  ];
}
