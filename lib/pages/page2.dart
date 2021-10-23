import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statate_test/bloc/users/bloc/user_bloc.dart';
import 'package:statate_test/models/user.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                BlocProvider.of<UserBloc>(context).add(ActiveUser(User(
                    nombre: "David",
                    edad: 32,
                    profeciones: ["Swift", "JavaScript"])))
              },
              color: Colors.blue,
              child: Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () =>
                  {BlocProvider.of<UserBloc>(context).add(ChangeAge(30))},
              color: Colors.blue,
              child: Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              onPressed: () => {
                BlocProvider.of<UserBloc>(context)
                    .add(AddProfetions("Profecion 1"))
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
