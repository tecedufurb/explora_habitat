import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:habitat_app/app/shared/util/constants.dart';

class CadastrarRoteiroPage extends StatefulWidget {
  @override
  CadastrarRoteiroState createState() => CadastrarRoteiroState();
}

class CadastrarRoteiroState extends State<CadastrarRoteiroPage> {
  List<String> _listCaracteristicas = [
    'Foto',
    'Medida',
    'Solo',
    'Interação',
    'Área desmatada',
    'Vídeo',
    'Característica',
    'Lupa',
    'Vivência',
    'Mosquito',
    'Áudio',
    // 'Teste',
    // //'Desenhar',
    // 'Ficha Coleta',
    // 'Lixo',
    // 'Sons da Natureza',
    'Localização',
    // 'Produção de Material',
    // 'Outra intervenção',
    // 'Plantar',
    // 'Personalizada'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[300],
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(15, 10, 0, 10),
              child: Text(
                'Objetivo: Teste1', //+ widget.objEspecifico.getObjetivo(),
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: GridView.count(
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      crossAxisCount: 4,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      primary: false,
                      children: List.generate(
                        _listCaracteristicas.length,
                        (index) {
                          return TextButton(
                            style: TextButton.styleFrom(
                              side: BorderSide(
                                  color: EXPLORA_HABITAT_PRIMARY, width: 2.0),
                              backgroundColor: Colors.green[500],
                              primary: Colors.white,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  _listCaracteristicas[index],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            onPressed: () {
                              //if (index > 11) index++;
                              //   String nomeAtividade =
                              //       _listCaracteristicas[index];
                              //   if (nomeAtividade == 'Personalizada')
                              //     nomeAtividade = '';
                              //   chamaTelaCadastrarNovaAtividade(
                              //       context, new Atividade(), nomeAtividade);
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  // Expanded(
                  //   child: ReorderableListView(
                  //     onReorder: onReorder,
                  //     children: getListItems(),
                  //  ),
                  // ),
                  Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.fromLTRB(5, 0, 0, 0),
                      itemCount:
                          6, // widget.tema.getListaObjEspecifico().length,
                      itemBuilder: (context, index) {
                        return Container(
                          color: (index % 2 == 0)
                              ? Colors.green[100]
                              : Colors.green[200],
                          child: ListTile(
                            contentPadding: EdgeInsets.fromLTRB(5, 5, 0, 0),
                            leading: Icon(Icons.now_widgets_outlined),
                            title: Text(
                              "Teste",
                              //widget.tema.getObjEspecifico(index).getObjetivo(),
                              style: TextStyle(fontSize: 12),
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
                                    "Teste",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  onPressed: () {
                                    // FocusManager.instance.primaryFocus.unfocus();
                                    // chamaTelaCadastrarRoteiro(context, widget.tema.getObjEspecifico(index));
                                    // Modular.to.pushNamedAndRemoveUntil(
                                    //     '/explora/criarRoteiro',
                                    //     ModalRoute.withName('/explora'));
                                  },
                                ),
                                IconButton(
                                  padding: EdgeInsets.zero,
                                  icon: Icon(
                                    Icons.delete_forever,
                                    size: 20,
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
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: CheckboxListTile(
                      title: Text(
                        "Seguir ordem", //"Este roteiro deve ser realizado na ordem proposta",
                        style: TextStyle(fontSize: 20),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      value:
                          true, //widget.objEspecifico.getRoteiro().getOrdenado(),
                      onChanged: (bool? value) {
                        // setState(() {
                        //   widget.objEspecifico.getRoteiro().setOrdenado(value);
                        // });
                      },
                      activeColor: Colors.white,
                      checkColor: Colors.black,
                    ),
                  ),
                  Container(
                    height: 70,
                    padding: EdgeInsets.fromLTRB(5, 5, 15, 5),
                    child: ElevatedButton(
                      // color: Colors.green[500],
                      // textColor: Colors.white,
                      child: Text(
                        "Finalizar atividade",
                        style: TextStyle(fontSize: 14),
                      ),
                      onPressed: () {
                        //Navigator.pop(context, widget.objEspecifico);
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
