import 'dart:io';

import 'package:TCC_II/Classes/Caracteristicas/CaracteristicaFoto.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:TCC_II/Classes/Atividade.dart';
import 'package:image_picker/image_picker.dart';

class ClasseFoto extends StatefulWidget {
  Atividade _atividade = new Atividade();
  ClasseFoto(this._atividade);

  @override
  Foto createState() => Foto();
}

class Foto extends State<ClasseFoto> {
  TextEditingController _textoDescricao = new TextEditingController();
  PickedFile _imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.green[300],
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  _decideImageView(),
                  FloatingActionButton(
                    backgroundColor: Colors.blue,
                    onPressed: () {
                      _openCamera(context);
                    },
                    heroTag: 'video1',
                    child: const Icon(Icons.camera_alt),
                  ),
                ],
              ),
            ),
            Expanded(
              child: IntrinsicWidth(
                child: Column(
                  children: <Widget>[
                    Container(
                      child: TextField(
                        controller: _textoDescricao,
                        maxLength: 150,
                        maxLines: 7,
                        decoration: InputDecoration(
                          hintText: 'Objetivo geral da atividade de campo',
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
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Container(
                            width: 150,
                            child: FloatingActionButton.extended(
                              heroTag: "btGravar",
                              label: Text("Gravar"),
                              backgroundColor: Colors.green,
                              onPressed: () {
                                if (_imageFile == null) {
                                  return showDialog(
                                    context: context,
                                    builder: (BuildContext context) => CupertinoAlertDialog(
                                      title: Text("Campo obrigatório"),
                                      content: Text("É obrigatório adicionar uma imagem."),
                                      actions: <Widget>[
                                        CupertinoDialogAction(
                                          isDefaultAction: true,
                                          child: Text("OK"),
                                          onPressed: () => Navigator.pop(context),
                                        ),
                                      ],
                                    ),
                                  );
                                }
                                widget._atividade.adicionaResposta(CaracteristicaFoto(_imageFile, _textoDescricao.text));
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Container(
                            width: 150,
                            child: FloatingActionButton.extended(
                              heroTag: "btCancelar",
                              label: Text("Cancelar"),
                              backgroundColor: Colors.red,
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    dynamic foto = widget._atividade.respostaAtividade;

    if (foto != null) {
      _textoDescricao.text = foto.getDescricao();
      _imageFile = foto.getImageFile();
    }
  }

  _openCamera(BuildContext context) async {
    var ip = ImagePicker();
    var picture = await ip.getImage(source: ImageSource.camera);
    this.setState(() {
      _imageFile = picture;
    });
  }

  Widget _decideImageView() {
    if (_imageFile == null) {
      return Expanded(
        child: Center(
          child: Text("Nenhuma imagem no momento"),
        ),
      );
    } else {
      return Expanded(
          child: Image.file(
        File(_imageFile.path),
        width: 400,
        height: 400,
      ));
    }
  }
}
