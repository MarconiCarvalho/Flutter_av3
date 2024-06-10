import 'package:get/get.dart';
import 'package:project_flutter_av2/widgets/LoginViewController.dart';

class LoginBindings extends Bindings{
  @override
  void dependencies() {
   Get.lazyPut(() => LoginController());
  }

}