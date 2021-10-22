import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:statate_test/models/user.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitial());

  void selectUser(User user) {
    emit(new UserActive(user));
  }

  void changeAge(int age) {
    final currenState = state;

    if (currenState is UserActive) {
      final newUser = currenState.user.copyWith(edad: age);
      emit(UserActive(newUser));
    }
  }

  void addProfetion(String p) {
    final currenState = state;
    if (currenState is UserActive) {
      final prof = [...currenState.user.profeciones, p];
      final newUser = currenState.user.copyWith(profeciones: prof);
      emit(UserActive(newUser));
    }
  }
}
