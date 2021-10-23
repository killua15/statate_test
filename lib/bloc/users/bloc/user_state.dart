part of 'user_bloc.dart';

@immutable
abstract class UserState {}

class UserInitial extends UserState {
  final existUser;

  UserInitial({this.existUser});
}

class UserActive extends UserState {
  final User user;
  UserActive(this.user);
}
