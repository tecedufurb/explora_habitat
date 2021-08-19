import 'package:habitat_app/app/modules/explora_habitat/exploraHabitat_module.dart';
import 'package:habitat_app/app/modules/home/home_Page.dart';
import 'package:habitat_app/app/modules/home/home_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => HomePage()),
    ModuleRoute('/home/explora_habitat', module: ExploraHabitatModule()),
  ];
}
