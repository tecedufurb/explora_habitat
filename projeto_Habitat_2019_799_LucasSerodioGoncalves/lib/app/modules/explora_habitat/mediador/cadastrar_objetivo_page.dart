import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/shared/models/tema.dart';
import 'package:habitat_app/app/shared/util/constants.dart';

class CadastrarObjetivoPage extends StatefulWidget {
  Tema tema = new Tema();
  CadastrarObjetivoPage({required this.tema});

  @override
  CadastrarObjetivoState createState() => CadastrarObjetivoState();
}

class CadastrarObjetivoState extends State<CadastrarObjetivoPage> {
  @override
  Widget build(BuildContext context) {
    print(widget.tema.getTema());
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: EXPLORA_BACKGROUND_COLOR,
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(15, 15, 5, 0),
                    child: TextField(
                      //focusNode: _fnObjetivo,
                      //controller: _tecObjetivo,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Cadastrar Objetivo',
                        hintText: 'Digite um Objetivo',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(5, 15, 15, 0),
                    child: ElevatedButton(
                      // padding:
                      //     EdgeInsets.symmetric(horizontal: 10, vertical: 18),
                      // color: Colors.green[500],
                      // textColor: Colors.white,
                      child: Text(
                        "Confirmar",
                        style: TextStyle(fontSize: 14),
                      ),
                      style: ButtonStyle(
                          // shape:
                          //     MaterialStateProperty.all<RoundedRectangleBorder>(
                          //         RoundedRectangleBorder(
                          //             borderRadius: BorderRadius.circular(18.0),
                          //             side: BorderSide(
                          //                 color: EXPLORA_HABITAT_PRIMARY,
                          //                 width: 2.0)))
                          backgroundColor: MaterialStateProperty.all<Color>(
                              EXPLORA_BTN_COLOR)),
                      onPressed: () {
                        // if (validaCampos()) {
                        //   FocusManager.instance.primaryFocus.unfocus();
                        //   cadastrarObjetivo();
                        // }
                        Modular.to.pushNamedAndRemoveUntil(
                            '/explora/souMediador',
                            ModalRoute.withName('/explora'));
                      },
                    ),
                  ),
                ),
              ],
            ),
            Flexible(
              child: ListView.builder(
                padding: EdgeInsets.fromLTRB(5, 15, 5, 0),
                itemCount: 3, // widget.tema.getListaObjEspecifico().length,
                itemBuilder: (context, index) {
                  return Container(
                    color: (index % 2 == 0)
                        ? Colors.green[100]
                        : Colors.green[200],
                    child: ListTile(
                      leading: Icon(Icons.now_widgets_outlined),
                      title: Text(
                        "Teste",
                        //widget.tema.getObjEspecifico(index).getObjetivo(),
                        style: TextStyle(fontSize: 15),
                      ),
                      dense: true,
                      trailing: Wrap(
                        spacing: 12,
                        children: <Widget>[
                          ElevatedButton(
                            // padding: EdgeInsets.symmetric(horizontal: 10),
                            // color: Colors.green[500],
                            // textColor: Colors.white,
                            child: Text(
                              "Cadastrar Roteiro",
                              style: TextStyle(fontSize: 15),
                            ),
                            style: ButtonStyle(
                                // shape: MaterialStateProperty.all<
                                //         RoundedRectangleBorder>(
                                //     RoundedRectangleBorder(
                                //         borderRadius:
                                //             BorderRadius.circular(18.0),
                                //         side: BorderSide(
                                //             color: EXPLORA_HABITAT_PRIMARY,
                                //             width: 2.0)))
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        EXPLORA_BTN_COLOR)),
                            onPressed: () {
                              // FocusManager.instance.primaryFocus.unfocus();
                              // chamaTelaCadastrarRoteiro(context, widget.tema.getObjEspecifico(index));
                              Modular.to.pushNamedAndRemoveUntil(
                                  '/explora/criarRoteiro',
                                  ModalRoute.withName('/explora'));
                            },
                          ),
                          IconButton(
                            padding: EdgeInsets.zero,
                            icon: Icon(
                              Icons.delete_forever,
                              size: 30,
                            ),
                            onPressed: () {
                              // FocusManager.instance.primaryFocus.unfocus();
                              // chamaDialogExcluirObjEspecifico(context, index);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
              height: 50,
              child: ElevatedButton(
                // padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                // color: Colors.green[500],
                // textColor: Colors.white,
                child: Text(
                  "Finalizar", //Finalizar Cadastro de Objetivos
                  style: TextStyle(fontSize: 20),
                ),
                style: ButtonStyle(
                    // shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    //     RoundedRectangleBorder(
                    //         borderRadius: BorderRadius.circular(18.0),
                    //         side: BorderSide(
                    //             color: EXPLORA_HABITAT_PRIMARY, width: 2.0)))
                    backgroundColor:
                        MaterialStateProperty.all<Color>(EXPLORA_BTN_COLOR)),
                onPressed: () {
                  //chamaTelaCadastrarTema(context);
                  Modular.to.pushNamedAndRemoveUntil(
                      '/explora/souMediador', ModalRoute.withName('/explora'));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
