part of 'home_bloc.dart';

@immutable
class HomeState extends Equatable {
  final List<ListProduct> items;
  final List<TabListProduct> tabItems;

  const HomeState({this.items = const [], this.tabItems = const []});

  HomeState copyWith(
      {List<ListProduct>? items, List<TabListProduct>? tabItems}) {
    return HomeState(
        items: items ?? this.items, tabItems: tabItems ?? this.tabItems);
  }

  @override
  List<Object?> get props => [items, tabItems];
}

class ListProduct {
  final String image;
  final String text;

  ListProduct({
    required this.text,
    required this.image,
  });
}

class TabListProduct {
  final String image;
  final String title;
  final String subtitle;
  final String detailImage;
  final String detailName;
  final String detailComment;


  TabListProduct(
      {required this.image,
  required this.title,
  required this.subtitle,
  required this.detailComment,
  required this.detailImage,
  required this.detailName});
}
