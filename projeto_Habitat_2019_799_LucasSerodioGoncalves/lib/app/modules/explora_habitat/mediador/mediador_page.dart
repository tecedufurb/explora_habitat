import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:habitat_app/app/components/cardImageTitle/card_image_title_widget.dart';
//import 'package:habitat_app/app/shared/util/constants.dart';
import 'package:flutter_modular/flutter_modular.dart';

class MediadorPage extends StatefulWidget {
  @override
  MediadorState createState() => MediadorState();
}

class MediadorState extends State<MediadorPage> {
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
