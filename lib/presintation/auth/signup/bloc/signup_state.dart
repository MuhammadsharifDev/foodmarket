part of 'signup_bloc.dart';

@immutable


class SignupState extends Equatable {
  final Status firebase;

  const SignupState({this.firebase = Status.initial});

  SignupState copyWith({Status? firebase}){
    return SignupState(firebase: firebase??this.firebase);
  }
  @override
  List<Object?> get props => [firebase];
}
enum Status { initial, loading, success, error }

extension FireebaseStatusX on Status{
  bool get isInitial => this == Status.initial;

  bool get isLoading => this == Status.loading;

  bool get isSuccess => this == Status.success;

  bool get isError => this == Status.error;
}