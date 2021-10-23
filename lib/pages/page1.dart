import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statate_test/controllers/user_controller.dart';
import 'package:statate_test/models/user.dart';
import 'package:statate_test/pages/page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final userCrtl = Get.put(UserController());

    return Scaffold(
      appBar: AppBar(
        title: Text("Page1"),
      ),
      // body: userCrtl.existeUser.isTrue ? InformationUser() : NoInfo(),
      body: Obx(() => userCrtl.existeUser.value
          ? InformationUser(
              user: userCrtl.user.value,
            )
          : NoInfo()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.ac_unit),
        onPressed: () {
          //Navigator.pushNamed(context, 'page2');
          Get.to(() => Page2());
        },
      ),
    );
  }
}

class NoInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('No info'),
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
