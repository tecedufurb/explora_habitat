import 'package:flutter_modular/flutter_modular.dart';
import 'package:habitat_app/app/components/habitatCard/habitat_card.dart';
import 'package:habitat_app/app/components/headerBubble/header_bubble_widget.dart';
import 'package:habitat_app/app/components/menuHabitat/menu_habitat_widget.dart';
import 'package:habitat_app/app/modules/home/home_store.dart';
import 'package:flutter/material.dart';
import 'package:habitat_app/app/shared/util/constants.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = 'HomePage'}) : super(key: key);
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  final HomeStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: MenuHabitatWidget(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220,
            floating: false,
            pinned: true,
            iconTheme: IconThemeData(color: BLACK),
            backgroundColor: Colors.transparent,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              titlePadding: EdgeInsets.only(left: 15, bottom: 60),
              title: Text(
                "Habitat",
                style: TextStyle(
                  fontFamily: 'Arial Rounded MT Bold Negrito',
                  fontSize: 38,
                ),
              ),
              background: Stack(
                children: [
                  Container(
                    height: 300,
                    child: HeaderBubbleWidget(
                      color: PRIMARY,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverFillRemaining(
            child: GestureDetector(
              onTap: () {
                Modular.to.pushNamedAndRemoveUntil(
                  '/explora_habitat',
                  ModalRoute.withName('/home'),
                );
              },
              child: Container(
                child: GridView.count(
                  crossAxisCount: 3,
                  children: [
                    HabitatCardWidget(
                      '${PATH_IMAGES}Explora_habitat.png',
                      color: EXPLORA_HABITAT_PRIMARY,
                      title: "Explora",
                      fonteSize: MediaQuery.of(context).size.height * .04,
                      action: () {},
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
