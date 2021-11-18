import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/shared/util/constants.dart';

class MenuHabitatWidget extends StatelessWidget {
  final Color? corlorHeader;
  final List<ListTile>? extraTile;
  const MenuHabitatWidget({Key? key, this.corlorHeader, this.extraTile})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
              color: corlorHeader != null ? corlorHeader : PRIMARY),
          child: Text(
            'Menu',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          title: Text(
            'Módulos',
            style: TextStyle(fontSize: 18),
          ),
        ),
        ListTile(
          leading: Icon(Icons.home),
          title: Text(
            'Habitat',
            style: TextStyle(fontSize: 16),
          ),
          onTap: () {
            ///Para voltar a pagina home e eliminar as paginas existentes até o /home
            Modular.to.pushNamedAndRemoveUntil(
              '/home',
              ModalRoute.withName('/home'),
            );
          },
        ),
      ]),
    );
  }
}
