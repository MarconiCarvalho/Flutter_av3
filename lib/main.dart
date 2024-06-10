
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:project_flutter_av2/pages/home_page.dart';
import 'package:project_flutter_av2/pages/loading_page.dart';
import 'package:project_flutter_av2/pages/login_page.dart';
import 'package:project_flutter_av2/pages/phofile_page.dart';
import 'package:project_flutter_av2/pages/register_page.dart';
import 'package:project_flutter_av2/widgets/cardsItens.dart';
import 'package:project_flutter_av2/widgets/loginBidings.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: LoginBindings(),
      debugShowCheckedModeBanner: false,
      title:'Flutter Demo',
      theme: ThemeData(
        primarySwatch:Colors.blue,
      ),
      home: CardsItens(),
      
    );
  } 
}
