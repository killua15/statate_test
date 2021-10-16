import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statate_test/models/user.dart';
import 'package:statate_test/services/user_service.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      body: StreamBuilder(
        stream: userService.userStream,
        initialData: null,
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          return snapshot.hasData
              ? InformationUser(
                  user: userService.user,
                )
              : Center(
                  child: Text("No hay usuer"),
                );
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
  final User? user;

  const InformationUser({this.user});
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
        ListTile(title: Text('Nombre: ${user?.nombre}')),
        ListTile(title: Text('Edad: ${user?.edad}')),
        Divider(
          color: Colors.blue,
        ),
        Text(
          "Profeciones",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        ListTile(title: Text("Profecion1: ")),
        ListTile(title: Text("Profecion2: ")),
        ListTile(title: Text("Profecion3: ")),
        ListTile(title: Text("Profecion4: ")),
      ]),
    );
  }
}
