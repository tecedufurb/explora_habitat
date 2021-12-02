import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/modules/explora_habitat/exploraHabitat_page.dart';
import 'package:habitat_app/app/modules/explora_habitat/mediador/cadastrar_tema_page.dart';
import 'package:habitat_app/app/modules/explora_habitat/mediador/mediador_module.dart';
import 'package:habitat_app/app/modules/home/home_page.dart';
import 'package:habitat_app/app/shared/models/tema.dart';

import 'clubista/clubista_module.dart';
import 'mediador/cadastrar_objetivo_page.dart';
import 'mediador/cadastrar_roteiro_page.dart';

class ExploraHabitatModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/explora', child: (_, args) => ExploraHabitatPage()),
    ChildRoute('/menu_principal', child: (_, args) => HomePage()),
    ChildRoute('/criarTema', child: (_, args) => CadastrarTemaPage()),
    ChildRoute('/criarObjetivo',
        child: (_, args) => CadastrarObjetivoPage(tema: args.data)),
    ChildRoute('/criarRoteiro', child: (_, args) => CadastrarRoteiroPage()),
    //ChildRoute('/criarAtividade', child: (_, args) => CadastrarAtividadePage()),
    ModuleRoute('/souMediador', module: MediadorModule()),
    ModuleRoute('/souClubista', module: ClubistaModule()),
  ];
}
