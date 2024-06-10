import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:project_flutter_av2/pages/register_page.dart';
import 'package:project_flutter_av2/utils/colors_standart.dart';

class Header extends StatefulWidget {
  const Header({super.key});

  @override
  State<Header> createState() => _HeaderState();
}

_profile(){
  return GestureDetector(
    onTap:(){},
    child: Container(
      margin: const EdgeInsets.only(left:15, top:15, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80), color:backgroundColor
      ),
      child: IconButton(
        icon: const Icon(
          MdiIcons.accountOutline,color: Color.fromARGB(255, 107, 107, 107),

        ), onPressed: () { 
          Get.to(const CreateAccountPage());
         },),

    ),
  );
}
_search(){
  return Material(   
    child: Container(
      color: SecondaryColor,
      width: 300,
      height: 30,
      child: const TextField(
  decoration: InputDecoration(
    border: OutlineInputBorder(),
    hintText: 'O que você procura está aqui!',
    filled: true,
    fillColor: Colors.white,
    hintStyle: TextStyle(color: Colors.grey),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.blue),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey),
    ),

    contentPadding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
   
    alignLabelWithHint: true,
    ),
),
    ),);

}

_shopCar(){
  return GestureDetector(
    onTap:(){},
    child: Container(
      margin: const EdgeInsets.only(right:15, top:15, bottom: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80), color:backgroundColor
      ),
      child: IconButton(
        icon: const Icon(
          MdiIcons.shoppingOutline,color: Color.fromARGB(255, 107, 107, 107),

        ), onPressed: () {  },),

    ),
  );
}



class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: SecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _profile(),
              _search(),
              _shopCar(),
            ],
          ),
        ],
      ),
    );
  }
}