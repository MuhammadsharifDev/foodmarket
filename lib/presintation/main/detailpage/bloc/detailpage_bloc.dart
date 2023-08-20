import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'detailpage_event.dart';
part 'detailpage_state.dart';

class DetailpageBloc extends Bloc<DetailpageEvent, DetailpageState> {
  DetailpageBloc() : super(const DetailpageState()) {
    on<CountAddEvent>(_increment);
    on<CountRemoveEvent>(_decrement);
  }
  void _increment(CountAddEvent event,Emitter<DetailpageState>emit){
    emit(state.copyWith(count: event.count+1));
  }

  void _decrement(CountRemoveEvent event,Emitter<DetailpageState>emit){
   int newNumber=state.count-1;
   newNumber<0?newNumber=0:state.count;
   emit(state.copyWith(count: newNumber));
  }
}
