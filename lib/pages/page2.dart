import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statate_test/models/user.dart';
import 'package:statate_test/services/user_service.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userServ = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: userServ.existUser
            ? Text('${userServ.user?.nombre}')
            : Text('No users'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                userServ.user = new User(
                    nombre: 'David',
                    edad: 32,
                    profeciones: ['Swift', 'JavaScript']);
              },
              color: Colors.blue,
              child: Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                userServ.changeAge(30);
              },
              color: Colors.blue,
              child: Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () {
                userServ.addProfetion('Dart');
              },
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
