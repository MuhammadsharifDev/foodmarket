part of 'signup_bloc.dart';

@immutable
abstract class SignupEvent {}
class SignUpEvent extends SignupEvent{
  final String email;
  final String password;
  SignUpEvent({required this.password,required this.email});

}
