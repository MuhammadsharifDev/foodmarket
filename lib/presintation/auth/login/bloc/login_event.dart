part of 'login_bloc.dart';

@immutable
abstract class LoginEvent {}

class SignInEvent extends LoginEvent{
  final String email;
  final String password;
  SignInEvent({required this.password,required this.email});

}

class SignInWithGoogleEvent extends LoginEvent{
  SignInWithGoogleEvent();
  @override
  List<Object?> get props=>[];
}