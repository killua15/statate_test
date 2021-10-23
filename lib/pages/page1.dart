import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statate_test/bloc/users/bloc/user_bloc.dart';
import 'package:statate_test/models/user.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          switch (state.runtimeType) {
            case UserActive:
              return InformationUser(user: (state as UserActive).user);

            default:
              return Center(child: Text('No user'));
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () {
          Navigator.pushNamed(context, 'page2');
        },
      ),
    );
  }
}

class InformationUser extends StatelessWidget {
  final User user;

  const InformationUser({required this.user}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      margin: EdgeInsets.all(20),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "General",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Divider(
          color: Colors.blue,
        ),
        ListTile(title: Text("Nombre: ${user.nombre}")),
        ListTile(title: Text("Edad: ${user.edad}")),
        Divider(
          color: Colors.blue,
        ),
        Text(
          "Profeciones",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        ...user.profeciones
            .map((e) => ListTile(
                  title: Text(e),
                ))
            .toList()
      ]),
    );
  }
}
