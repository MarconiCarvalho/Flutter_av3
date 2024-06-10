import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_av2/widgets/LoginViewController.dart';

class PasswordField extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.passwordInput,
      obscureText: true,
      decoration: InputDecoration(hintText: 'Senha'),
    );
  }
}