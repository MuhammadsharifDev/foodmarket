import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(const SignupState()) {
    on<SignUpEvent>(_signUp);
  }


  Future<void> _signUp(SignUpEvent event,Emitter<SignupState> emit) async {
    emit(state.copyWith(firebase: Status.loading));
    try{
     await FirebaseAuth.instance.createUserWithEmailAndPassword(email: event.email, password: event.password);
      emit(state.copyWith(firebase: Status.success));
    }on FirebaseAuthException catch(e){
      print('Error-->${e.code}');
      emit(state.copyWith(firebase: Status.error));
    }
  }
}
