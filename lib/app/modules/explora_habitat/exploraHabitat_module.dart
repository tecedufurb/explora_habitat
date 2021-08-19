import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/modules/explora_habitat/exploraHabitat_page.dart';

class ExploraHabitatModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => ExploraHabitatPage())
  ];
}
