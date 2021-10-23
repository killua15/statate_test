import 'package:get/get.dart';
import 'package:statate_test/models/user.dart';

class UserController extends GetxController {
  var existeUser = false.obs;
  var user = new User().obs;

  void loadUser(User pUser) {
    this.user.value = pUser;
    this.existeUser.value = true;
  }

  void changeAge(int age) {
    this.user.update((val) {
      val!.edad = age;
    });
  }
}
