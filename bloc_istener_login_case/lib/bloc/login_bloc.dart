import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginButtonPressed>(_onLoginPressed);
  }
  Future<void> _onLoginPressed(
    LoginButtonPressed event, // الإيميل والباسورد
    Emitter<LoginState> emit, // تغيير حالة الشاشة
  ) async {
    emit(LoginLoading()); // قول للشاشة: استني

    await Future.delayed(Duration(seconds: 2));

    if (event.email == "test@test.com" && event.password == "123456") {
      emit(LoginSuccess()); // قول للشاشة: تمام
    } else {
      emit(LoginFailure("غلط")); // قول للشاشة: في مشكلة
    }
  }
}
