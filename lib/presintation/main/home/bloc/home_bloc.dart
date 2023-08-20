import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:foodmarket_firebase/presintation/const/utils/appimages.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    on<ListProductEvent>(_listProduct);
  }
  void _listProduct(ListProductEvent event,Emitter<HomeState> emit){
    emit(state.copyWith(items:products ));
  }
}
final List<ListProduct> products=[
  ListProduct(text: 'Cherry Healthy', image: AppImages.list1_image, ),
  ListProduct(text: 'Burger Tamayo', image: AppImages.list2_image, ),
];
