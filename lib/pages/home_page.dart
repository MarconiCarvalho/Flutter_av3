
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:project_flutter_av2/widgets/cardsItens.dart';
import 'package:project_flutter_av2/widgets/cardsPage.dart';
import 'package:project_flutter_av2/widgets/header.dart';
import 'package:project_flutter_av2/utils/colors_standart.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
 Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      
          child: Container(
            color: backgroundColor,
              child: Column(
                 children: [
                  Header(),          
                  CardsItens(),
                 ],
              ),
          ),
      )

    
     );
  }
}