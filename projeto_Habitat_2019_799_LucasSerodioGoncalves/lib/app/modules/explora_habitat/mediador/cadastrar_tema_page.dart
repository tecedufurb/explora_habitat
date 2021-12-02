import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/shared/models/tema.dart';
import 'package:habitat_app/app/shared/util/constants.dart';

// ignore: must_be_immutable
class CadastrarTemaPage extends StatefulWidget {
  Tema tema = new Tema();
  //CadastrarTemaPage({ this.tema});

  @override
  CadastrarTemaState createState() => CadastrarTemaState();
}

class CadastrarTemaState extends State<CadastrarTemaPage> {
  TextEditingController _tecTema = TextEditingController();
  TextEditingController _tecDescricao = TextEditingController();
  FocusNode _fnTema = FocusNode();
  FocusNode _fnDescricao = FocusNode();

  @override
  void initState() {
    super.initState();
    _tecTema = new TextEditingController(text: widget.tema.getTema());
    _tecDescricao = new TextEditingController(text: widget.tema.getDescricao());
    _fnTema = FocusNode();
    _fnDescricao = FocusNode();
  }

  @override
  void dispose() {
    _fnTema.dispose();
    _fnDescricao.dispose();
    super.dispose();
  }

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
                focusNode: _fnTema,
                controller: _tecTema,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      borderSide: BorderSide(
                          color: EXPLORA_HABITAT_PRIMARY, width: 2.0)),
                  labelText: 'Cadastrar Tema*',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: TextField(
                focusNode: _fnDescricao,
                controller: _tecDescricao,
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
                        if (validaCampos()) {
                          FocusManager.instance.primaryFocus!.unfocus();
                          chamaTelaCadastrarObjetivosEspecificos(
                              context, widget.tema);
                        }
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
                        if (validaCampos()) {
                          finalizarTemaGerarQRCode();
                        }
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

  bool validaCampos() {
    if (_tecTema.text.isEmpty) {
      _fnTema.requestFocus();
      return false;
    } else if (_tecDescricao.text.isEmpty) {
      _fnDescricao.requestFocus();
      return false;
    }

    if (widget.tema.getListaObjEspecifico().isNotEmpty) {
      widget.tema.setObjDefinido(true);
    }

    if (widget.tema.getObjDefinido()) {
      for (final it in widget.tema.getListaObjEspecifico()) {
        if (it.getRoteiro().getQtdAtividades() > 0) {
          widget.tema.setRoteiroDefinido(true);
          break;
        }
      }
    }

    return true;
  }

  void chamaTelaCadastrarObjetivosEspecificos(
      BuildContext context, Tema tema) async {
    tema.setDescricao(_tecDescricao.text);
    tema.setTema(_tecTema.text);
    print(tema.getTema());
    Modular.to.pushNamedAndRemoveUntil(
        '/explora/criarObjetivo', ModalRoute.withName('/explora'),
        arguments: tema);
  }

  void finalizarTemaGerarQRCode() {
    widget.tema.setTema(_tecTema.text);
    widget.tema.setDescricao(_tecDescricao.text);

    Modular.to.pushNamedAndRemoveUntil(
        '/explora/souMediador', ModalRoute.withName('/explora'));
  }
}
