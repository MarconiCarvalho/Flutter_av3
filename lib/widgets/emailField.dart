import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_av2/widgets/LoginViewController.dart';

class EmailField extends GetView<LoginController> {
  const EmailField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.emailInput,
      decoration: InputDecoration(hintText: 'Email'),
    );
  }
}