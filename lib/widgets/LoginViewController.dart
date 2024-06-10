
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_flutter_av2/models/userModel.dart';
import 'package:project_flutter_av2/pages/home_page.dart';

class LoginController extends GetxController{
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();

  final RxList<User> userList = RxList();

  @override
  void onInit(){
    super.onInit();
  userList.add(User('erlon@gmail.com', '1234'));
  userList.add(User('joaoPaulo@gmail.com', 'am3solucoes'));
  userList.add(User('matias@gmail.com', 'presenca'));

  }
  void tryTologin() {
   for(int i = 0; i < userList.length; i++){
      if(emailInput.text == userList.elementAt(i).email){
        checkPassword(i);
        printError('USUARIO ENCONTRADO');
        break;
      }
   }
  }
  
  void checkPassword(int i) {
      if(passwordInput.text == userList.elementAt(i).password){
        login();

      }
    }
  }

  void login(){
    Get.to(const Home_Page());
  }

  void printError(String error){
    print(error);
  }

