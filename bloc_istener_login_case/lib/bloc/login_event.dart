part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class LoginButtonPressed extends LoginEvent {
  final String email;
  final String password;

  LoginButtonPressed({required this.email, required this.password});
}

/* 
🔴 قاعدة ذهبية:

❌ الـ Event مايفكرش
❌ الـ Event مايتحققش
❌ الـ Event ماينفّذش

✔ دوره بس يشيل بيانات
 */
