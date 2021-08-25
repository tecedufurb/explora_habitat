import 'package:habitat_app/app/modules/explora_habitat/exploraHabitat_page.dart';
import 'package:habitat_app/app/modules/home/home_Page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/home', child: (_, args) => HomePage()),
    ChildRoute('/explora_habitat', child: (_, args) => ExploraHabitatPage()),
  ];
}
