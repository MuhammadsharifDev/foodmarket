part of 'detailpage_bloc.dart';

@immutable
abstract class DetailpageEvent {}
class CountAddEvent extends DetailpageEvent {
  final int count;

  CountAddEvent({required this.count});
  @override
  List<Object?>  get props=>[count];
}
class CountRemoveEvent extends DetailpageEvent {
  final int count;

  CountRemoveEvent({required this.count});
  @override
  List<Object?>  get props=>[count];
}