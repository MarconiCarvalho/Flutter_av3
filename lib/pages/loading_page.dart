import 'package:flutter/material.dart';
import 'package:project_flutter_av2/pages/home_page.dart';
import 'package:project_flutter_av2/pages/login_page.dart';


class Loading_Page extends StatefulWidget {
  const Loading_Page({super.key});

  @override
State<Loading_Page> createState() => Loading_PageState();
}

class Loading_PageState extends State<Loading_Page>{
@override
void initState(){
  super.initState();

  Future.delayed(const Duration(seconds: 1),(){
    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=> Home_Page()));
  });
}

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xFF64B5F6),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/shop_logo.png', height: 220,)
        ],
      ),
    ); 
  }
}