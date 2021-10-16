import 'dart:async';

import 'package:statate_test/models/user.dart';

class _UserService {
  User? _user;
  StreamController<User?> _user_streamController =
      new StreamController<User?>.broadcast();
  User? get user => (this._user != null) ? _user : null;
  bool get isThereUser => (this._user != null) ? true : false;
  Stream<User?> get userStream => _user_streamController.stream;

  void loadUser(User user) {
    this._user = user;
    this._user_streamController.add(user);
  }

  void changeAge(int age) {
    this._user?.edad = age;
    this._user_streamController.add(this._user);
  }

  dispose() {
    this._user_streamController.close();
  }
}

final userService = new _UserService();
