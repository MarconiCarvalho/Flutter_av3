
import 'package:flutter/material.dart';
import 'package:project_flutter_av2/pages/home_page.dart';
import 'package:project_flutter_av2/pages/login_page.dart';
import 'package:project_flutter_av2/pages/phofile_page.dart';
import 'package:project_flutter_av2/pages/register_page.dart';

abstract class RoutersUtil{
  
  
  static const String HOMEPAGE = "/";
  static const String LOGINPAGE = "/login";
  static const String CREATEACCOUNT = "/register";
  static const String PROFILEPAGE = "/profile";


static Map<String, WidgetBuilder> routers = {
  
  
  RoutersUtil.HOMEPAGE:(context) => const Home_Page(),
  RoutersUtil.LOGINPAGE:(context) => const Login_Page(),
  RoutersUtil.CREATEACCOUNT:(context) => const CreateAccountPage(),
  RoutersUtil.PROFILEPAGE:(context) => ProfileScreen(),
  };
}
