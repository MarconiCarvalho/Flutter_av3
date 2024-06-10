

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:project_flutter_av2/widgets/LoginViewController.dart';
import 'package:project_flutter_av2/widgets/emailField.dart';
import 'package:project_flutter_av2/widgets/loginButton.dart';
import 'package:project_flutter_av2/widgets/passwordField.dart';

class Login_Page extends GetView<LoginController> {
  const Login_Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: const Center(child: Text('Login')),  
      ),
      body: _body(),
    );
  }
}

_body(){
  return Center(
    child: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(5),
      children: [
        SizedBox(
          height: Get.height / 1,
          ),
        EmailField(),
        SizedBox(height: 27),
        PasswordField(),
        SizedBox(height: 27),
        Divider(),
         SizedBox(height: 27),
        LoginButton(),
        ],
    ),
  );
}