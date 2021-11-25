import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/shared/util/constants.dart';

class CadastrarTemaPage extends StatefulWidget {
  @override
  CadastrarTemaState createState() => CadastrarTemaState();
}

//iniciar estado

class CadastrarTemaState extends State<CadastrarTemaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.green[300],
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                //focusNode: _fnTema,
                //controller: _tecTema,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Cadastrar Tema*',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                //focusNode: _fnDescricao,
                //controller: _tecDescricao,
                maxLength: 150,
                maxLines: 5,
                decoration: InputDecoration(
                  labelText: 'Objetivo geral da atividade de campo*',
                  hintText: 'Procurar árvore araucária',
                  alignLabelWithHint: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                    width: 150, //MediaQuery.of(context).size.width / 4,
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Cadastrar Objetivos",
                        textAlign: TextAlign.center,
                        //style: TextStyle(fontSize: 20),
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: EXPLORA_HABITAT_PRIMARY,
                                          width: 2.0)))),
                      onPressed: () {
                        // if (validaCampos()) {
                        //   FocusManager.instance.primaryFocus.unfocus();
                        //   chamaTelaCadastrarObjetivosEspecificos(context, widget.tema);
                        // }
                        Modular.to.pushNamedAndRemoveUntil(
                            '/explora/criarObjetivo',
                            ModalRoute.withName('/explora'));
                      },
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    width: 150, //MediaQuery.of(context).size.width / 4,
                    height: 50,
                    child: ElevatedButton(
                      child: Text(
                        "Finalizar",
                        textAlign: TextAlign.center,
                        //style: TextStyle(fontSize: 20),
                      ),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                      side: BorderSide(
                                          color: EXPLORA_HABITAT_PRIMARY,
                                          width: 2.0)))),
                      onPressed: () {
                        // if (validaCampos()) {
                        //   finalizarTemaGerarQRCode();
                        // }
                        Modular.to.pushNamedAndRemoveUntil(
                            '/explora/souMediador',
                            ModalRoute.withName('/explora'));
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// métodos internos: