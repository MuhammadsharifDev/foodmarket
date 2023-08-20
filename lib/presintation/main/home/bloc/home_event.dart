part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class ListProductEvent extends HomeEvent {
  ListProductEvent();

  @override
  List<Object?> get props => [];
}

class TabListEvent extends HomeEvent {
  TabListEvent();

  @override
  List<Object?> get props => [];
}
