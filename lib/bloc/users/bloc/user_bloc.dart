import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:statate_test/models/user.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(UserInitial()) {
    on<ActiveUser>((event, emit) {
      if (event is ActiveUser) {
        emit(UserActive(event.user));
      }
    });
    on<ChangeAge>((event, emit) {
      var user = (state as UserActive).user;
      emit(UserActive(user.copyWith(edad: event.age)));
    });
    on<AddProfetions>((event, emit) {
      var user = (state as UserActive).user;
      final prof = [...user.profeciones, event.profetion];
      emit(UserActive(user.copyWith(profeciones: prof)));
    });
  }
}
