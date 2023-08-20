part of 'detailpage_bloc.dart';

@immutable



class DetailpageState extends Equatable {
  final int count;


  const DetailpageState({this.count = 0,});

  DetailpageState copyWith({int? count,}) {
    return DetailpageState(
        count: count ?? this.count);
  }

  @override
  List<Object?> get props => [count];
}
