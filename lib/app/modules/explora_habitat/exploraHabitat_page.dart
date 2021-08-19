import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ExploraHabitatPage extends StatefulWidget {
  final String title;
  const ExploraHabitatPage({Key? key, this.title = 'Explora Habitat'})
      : super(key: key);
  @override
  ExploraHabitatState createState() => ExploraHabitatState();
}

class ExploraHabitatState extends State<ExploraHabitatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[300],
        alignment: Alignment.center,
        child: IntrinsicWidth(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  padding: EdgeInsets.all(15),
                  color: Colors.green[500],
                  textColor: Colors.white,
                  child: Text(
                    "Sou Professor",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      applicationVersion: '1.0.1',
                      applicationLegalese: 'Sou Professor',
                    );
                  },
                ),
              ),
              Container(
                child: RaisedButton(
                  padding: EdgeInsets.all(15),
                  textColor: Colors.white,
                  color: Colors.green[500],
                  child: Text(
                    "Sou Clubista",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      applicationVersion: '1.0.1',
                      applicationLegalese: 'Sou Clubista',
                    );
                  },
                ),
              ),
              Container(
                child: RaisedButton(
                  padding: EdgeInsets.all(15),
                  textColor: Colors.white,
                  color: Colors.green[500],
                  child: Text(
                    "Sobre",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    showAboutDialog(
                      context: context,
                      applicationVersion: '1.0.1',
                      applicationLegalese:
                          'Desenvolvido por: Gustavo Korbes Heinen\nAuxílios externos: Lucas Serodio Gonçalves,\nBruna Hamann',
                    );
                  },
                ),
              ),
              Container(
                child: RaisedButton(
                  padding: EdgeInsets.all(15),
                  textColor: Colors.white,
                  color: Colors.green[500],
                  child: Text(
                    "Voltar",
                    style: TextStyle(fontSize: 20),
                  ),
                  onPressed: () {
                    Modular.to.pushNamedAndRemoveUntil(
                      '/menu_principal',
                      ModalRoute.withName('/'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
