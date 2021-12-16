import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/components/menuHabitat/menu_habitat_widget.dart';
import 'package:habitat_app/app/shared/util/constants.dart';

class MediadorPage extends StatefulWidget {
  @override
  MediadorState createState() => MediadorState();
}

class MediadorState extends State<MediadorPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);
  }

  @override
  dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: EXPLORA_BACKGROUND_COLOR,
        drawer: MenuHabitatWidget(),
        body: Container(
          //color: Colors.green[300],
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[Text("QR Code aqui")],
              )),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 8,
                          vertical: 0),
                      child: ElevatedButton(
                        style: ButtonStyle(
                          // shape: MaterialStateProperty.all<
                          //         RoundedRectangleBorder>(
                          //     RoundedRectangleBorder(
                          //         borderRadius: BorderRadius.circular(18.0),
                          //         side: BorderSide(
                          //             color: EXPLORA_HABITAT_PRIMARY,
                          //             width: 2.0))
                          backgroundColor: MaterialStateProperty.all<Color>(
                              EXPLORA_BTN_COLOR),
                        ),
                        child: Text('Novo'),
                        onPressed: () {
                          Modular.to.pushNamedAndRemoveUntil(
                            '/explora/criarTema',
                            ModalRoute.withName('/explora'),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 8,
                          vertical: 0),
                      child: ElevatedButton(
                        child: Text(
                          "Próximo",
                          //style: TextStyle(fontSize: 14),
                        ),
                        style: ButtonStyle(
                            // shape: MaterialStateProperty.all<
                            //         RoundedRectangleBorder>(
                            //     RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(18.0),
                            //         side: BorderSide(
                            //             color: EXPLORA_HABITAT_PRIMARY,
                            //             width: 2.0)))
                            backgroundColor: MaterialStateProperty.all<Color>(
                                EXPLORA_BTN_COLOR)),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 8,
                          vertical: 0),
                      child: ElevatedButton(
                        child: Text(
                          "Anterior",
                          //style: TextStyle(fontSize: 14),
                        ),
                        style: ButtonStyle(
                            // shape: MaterialStateProperty.all<
                            //         RoundedRectangleBorder>(
                            //     RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(18.0),
                            //         side: BorderSide(
                            //             color: EXPLORA_HABITAT_PRIMARY,
                            //             width: 2.0)))
                            backgroundColor: MaterialStateProperty.all<Color>(
                                EXPLORA_BTN_COLOR)),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 8,
                          vertical: 0),
                      child: ElevatedButton(
                        child: Text(
                          "Excluir",
                          //style: TextStyle(fontSize: 14),
                        ),
                        style: ButtonStyle(
                            // shape: MaterialStateProperty.all<
                            //         RoundedRectangleBorder>(
                            //     RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(18.0),
                            //         side: BorderSide(
                            //             color: EXPLORA_HABITAT_PRIMARY,
                            //             width: 2.0)))
                            backgroundColor: MaterialStateProperty.all<Color>(
                                EXPLORA_BTN_COLOR)),
                        onPressed: () {},
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.of(context).size.width / 8,
                          vertical: 0),
                      child: ElevatedButton(
                        child: Text(
                          "Voltar",
                          //style: TextStyle(fontSize: 14),
                        ),
                        style: ButtonStyle(
                            // shape: MaterialStateProperty.all<
                            //         RoundedRectangleBorder>(
                            //     RoundedRectangleBorder(
                            //         borderRadius: BorderRadius.circular(18.0),
                            //         side: BorderSide(
                            //             color: EXPLORA_HABITAT_PRIMARY,
                            //             width: 2.0)))
                            backgroundColor: MaterialStateProperty.all<Color>(
                                EXPLORA_BTN_COLOR)),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
