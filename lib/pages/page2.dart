import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statate_test/controllers/user_controller.dart';
import 'package:statate_test/models/user.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCrtl = Get.find<UserController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () => {
                userCrtl.loadUser(User(
                    nombre: 'David',
                    edad: 32,
                    profeciones: ['Swift', 'JavaScript']))
              },
              color: Colors.blue,
              child: Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () => {userCrtl.changeAge(30)},
              color: Colors.blue,
              child: Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () => {},
              color: Colors.blue,
              child: Text(
                'Añadir Profecion',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
