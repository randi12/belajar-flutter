import 'package:get/get.dart';

import 'package:skripsi_baru/app/modules/login/controllers/new_password_controller.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NewPasswordController>(
      () => NewPasswordController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
