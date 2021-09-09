import 'package:flutter_modular/flutter_modular.dart';

import 'mediador_page.dart';

class MediadorModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/souMediador', child: (_, args) => MediadorPage()),
  ];
}
