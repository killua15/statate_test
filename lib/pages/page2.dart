import 'package:flutter/material.dart';
import 'package:statate_test/models/user.dart';
import 'package:statate_test/services/user_service.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
          stream: userService.userStream,
          builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
            return snapshot.hasData
                ? Text('${userService.user?.nombre}')
                : Text('No usuarios');
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                print("User loaded");
                userService
                    .loadUser(User(nombre: 'David', edad: 32, profeciones: []));
              },
              color: Colors.blue,
              child: Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () => {userService.changeAge(30)},
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
