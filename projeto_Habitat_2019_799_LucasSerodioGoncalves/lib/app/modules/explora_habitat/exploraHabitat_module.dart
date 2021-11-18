import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/modules/explora_habitat/exploraHabitat_page.dart';
import 'package:habitat_app/app/modules/explora_habitat/mediador/mediador_module.dart';
//import 'package:habitat_app/app/modules/explora_habitat/mediador/mediador_module.dart';
//import 'package:habitat_app/app/modules/home/home_module.dart';
import 'package:habitat_app/app/modules/home/home_page.dart';

import 'clubista/clubista_module.dart';

//import 'clubista/clubista_page.dart';
import 'mediador/mediador_page.dart';

class ExploraHabitatModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/explora', child: (_, args) => ExploraHabitatPage()),
    ChildRoute('/menu_principal', child: (_, args) => HomePage()),
    //ModuleRoute('/sou_mediador', module: MediadorModule()),
    //ModuleRoute('/menu_principal', module: HomeModule()),
    //ChildRoute('/souMediador', child: (_, args) => MediadorPage()),
    ModuleRoute('/souMediador', module: MediadorModule()),
    ModuleRoute('/souClubista', module: ClubistaModule())
    //ChildRoute('/sou_clubista', child: (_, args) => ClubistaPage()),
  ];
}
