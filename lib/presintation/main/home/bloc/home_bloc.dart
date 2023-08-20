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
    on<TabListEvent>(_tabListProducts);
  }

  void _listProduct(ListProductEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(items: products));
  }

  void _tabListProducts(TabListEvent event, Emitter<HomeState> emit) {
    emit(state.copyWith(tabItems: productTab));
  }
}

final List<ListProduct> products = [
  ListProduct(
    text: 'Cherry Healthy',
    image: AppImages.list1_image,
  ),
  ListProduct(
    text: 'Burger Tamayo',
    image: AppImages.list2_image,
  ),
];

final List<TabListProduct> productTab = [
  TabListProduct(
      image: AppImages.food1,
      title: 'Soup Bumil',
      subtitle: 'IDR 289.000',
      detailComment: '''Makanan khas Bandung yang cukup sering\ndipesan oleh anak muda dengan pola makan\nyang cukup tinggi dengan mengutamakan\ndiet yang sehat dan teratur.''',
      detailImage: AppImages.appbar_images,
      detailName: 'Cherry Healthy'),
  TabListProduct(
      image: AppImages.food2,
      title: 'Chicken',
      subtitle: 'IDR 4.509.000',
      detailComment: 'It is such hdde aan dbgga aai cck a min\n sisn',
      detailImage: AppImages.food2,
      detailName: 'Chicken'),
  TabListProduct(
      image: AppImages.food3,
      title: 'Shrimp',
      subtitle: 'IDR 999.000',
      detailComment:
          'axaa perfect such hdde aan dbgga aai cck a min\n ain the fridge',
      detailImage: AppImages.food3,
      detailName: 'Shrimp'),
  TabListProduct(
      image: AppImages.food4,
      title: 'Burger',
      subtitle: 'IDR 459.000',
      detailComment: 'ooo very good hdde aan dbgga aai cck a min\n ain the box',
      detailImage: AppImages.food4, detailName: 'Burger'),
];
