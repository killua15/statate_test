import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statate_test/models/user.dart';
import 'package:statate_test/services/user_service.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userServ = Provider.of<UserService>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: userServ.existUser
          ? InformationUser(user: userServ.user)
          : Center(
              child: Text("No hoy users"),
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
  User? user;
  InformationUser({required this.user});
  @override
  Widget build(BuildContext context) {
    List<String> profe = [];
    user?.profeciones.forEach((element) {
      profe.add(element);
    });
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
        ListTile(title: Text('Nombre: ${user?.nombre} ')),
        ListTile(title: Text('Edad: ${user?.edad}')),
        Divider(
          color: Colors.blue,
        ),
        Text(
          "Profeciones",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        ...profe.map((e) => ListTile(
              title: Text(e),
            ))
      ]),
    );
  }
}
