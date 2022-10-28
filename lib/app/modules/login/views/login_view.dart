import 'package:flutter/material.dart';

import 'package:get/get.dart';
// import 'package:skripsi_baru/app/modules/login/views/new_password_view.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('LOGIN'),
          centerTitle: true,
        ),
        body: ListView(
          padding: EdgeInsets.all(20),
          children: [
            TextField(
              autocorrect: false,
              controller: controller.emailC,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              autocorrect: false,
              controller: controller.passC,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                controller.login();
              },
              child: Text("LOGIN"),
            ),
            TextButton(
              onPressed: () {
                // controller.NewPasswordView();
              },
              child: Text("Lupa Password?"),
            ),
          ],
        ));
  }
}
