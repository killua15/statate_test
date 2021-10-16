import 'package:flutter/material.dart';
import 'package:statate_test/models/user.dart';

class UserService with ChangeNotifier {
  User? _user;

  User? get user => this._user;
  bool get existUser => (this._user != null) ? true : false;
  set user(User? user) {
    this._user = user;
    notifyListeners();
  }

  void changeAge(int age) {
    this._user?.edad = age;
    notifyListeners();
  }

  void deleteUser() {
    this._user = null;
    notifyListeners();
  }

  void addProfetion(String prof) {
    this._user?.profeciones.add(prof);
    notifyListeners();
  }
}
