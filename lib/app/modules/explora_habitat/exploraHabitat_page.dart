import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/components/cardImageTitle/card_image_title_widget.dart';
import 'package:habitat_app/app/components/headerWave/header_wave_widget.dart';
import 'package:habitat_app/app/components/menuHabitat/menu_habitat_widget.dart';
import 'package:habitat_app/app/shared/util/constants.dart';

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
      backgroundColor: SECONDARY,
      drawer: MenuHabitatWidget(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: MediaQuery.of(context).size.height * .35,
            floating: false,
            pinned: true,
            backgroundColor: Colors.transparent,
            iconTheme: IconThemeData(color: BLACK),
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height,
                    child: HeaderWaveWidget(
                      color: Colors.green.shade100,
                    ),
                  ),
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset(
                            '${PATH_IMAGES}IconLupa.png',
                            height: MediaQuery.of(context).size.height * .18,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * .15,
                            child: Text(
                              "EXPLORA HABITAT",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Arial Rounded MT Bold Negrito',
                                fontSize:
                                    MediaQuery.of(context).size.shortestSide *
                                        0.11,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: Container(
              child: GridView.count(
                padding: const EdgeInsets.all(20.0),
                crossAxisSpacing: MediaQuery.of(context).size.longestSide * .01,
                mainAxisSpacing: MediaQuery.of(context).size.longestSide * .01,
                crossAxisCount: 2,
                children: [
                  GestureDetector(
                    child: CardImageTitleWidget(
                      title: "Sou mediador",
                      pathImage: "${PATH_IMAGES}IconMediador.png",
                      primaryColor: Colors.green.shade200,
                      secondaryColor: Colors.amber.shade100,
                      onClick: () {},
                    ),
                    onTap: () {
                      Modular.to.pushNamedAndRemoveUntil(
                        '/explora/souMediador',
                        ModalRoute.withName('/explora'),
                      );
                    },
                  ),
                  GestureDetector(
                    child: CardImageTitleWidget(
                      title: "Sou clubista",
                      pathImage: "${PATH_IMAGES}IconLupa.png",
                      primaryColor: Colors.green.shade200,
                      secondaryColor: Colors.amber.shade100,
                      onClick: () {},
                    ),
                    onTap: () {
                      Modular.to.pushNamedAndRemoveUntil(
                        '/explora/souClubista',
                        ModalRoute.withName('/explora'),
                      );
                    },
                  ),
                  GestureDetector(
                    child: CardImageTitleWidget(
                      title: "Sobre",
                      pathImage: "${PATH_IMAGES}IconSobre.png",
                      primaryColor: Colors.green.shade200,
                      secondaryColor: Colors.amber.shade100,
                      onClick: () {},
                    ),
                    onTap: () {
                      showAboutDialog(
                        context: context,
                        applicationVersion: '1.0.1',
                        applicationLegalese:
                            'Desenvolvido por: Gustavo Korbes Heinen\nAuxílios externos: Lucas Serodio Gonçalves,\nBruna Hamann',
                      );
                    },
                  ),
                  GestureDetector(
                    child: CardImageTitleWidget(
                      title: "Voltar",
                      pathImage: "${PATH_IMAGES}IconVoltar.png",
                      primaryColor: Colors.green.shade200,
                      secondaryColor: Colors.amber.shade100,
                      onClick: () {},
                    ),
                    onTap: () {
                      Modular.to.pushNamedAndRemoveUntil(
                        '/explora/menu_principal',
                        ModalRoute.withName('/explora'),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
