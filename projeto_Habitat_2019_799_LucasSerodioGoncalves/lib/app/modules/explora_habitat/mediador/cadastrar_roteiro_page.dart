import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
    'Teste',
    //'Desenhar',
    'Ficha Coleta',
    'Lixo',
    'Sons da Natureza',
    'Localização',
    'Produção de Material',
    'Outra intervenção',
    'Plantar',
    'Personalizada'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green[300],
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 15),
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(15, 5, 0, 5),
              child: Text(
                'Objetivo: ', //+ widget.objEspecifico.getObjetivo(),
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 30),
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
                      crossAxisCount: 5,
                      scrollDirection: Axis.vertical,
                      primary: false,
                      children: List.generate(
                        _listCaracteristicas.length,
                        (index) {
                          return TextButton(
                            style: TextButton.styleFrom(
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
                                    fontSize: 20,
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
                  //   ),
                  // ),
                ],
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Flexible(
                    child: CheckboxListTile(
                      title: Text(
                        "Este roteiro deve ser realizado na ordem proposta",
                        style: TextStyle(fontSize: 20),
                      ),
                      controlAffinity: ListTileControlAffinity.leading,
                      value:
                          null, //widget.objEspecifico.getRoteiro().getOrdenado(),
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
                        style: TextStyle(fontSize: 20),
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
