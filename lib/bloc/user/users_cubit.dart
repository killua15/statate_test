import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statate_test/models/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectUser(User user) {
    emit(new UserActive(user));
  }

  // void changeAge(int age) {
  //   emit(this.selectUser(user));
  // }

  // void addProfetion(User user) {
  //   emit(new UserActive(user));
  // }
}
