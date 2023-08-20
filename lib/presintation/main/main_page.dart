import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmarket_firebase/presintation/main/bag/bag_page.dart';
import 'package:foodmarket_firebase/presintation/main/bloc/main_bloc.dart';
import 'package:foodmarket_firebase/presintation/main/home/home_page.dart';
import 'package:foodmarket_firebase/presintation/main/profile/profile_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MainBloc, MainState>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state.bottomMenu.index,
            children: [
              HomePage(),
              BagPage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: state.bottomMenu.index,
            onTap: (index) {
              context
                  .read<MainBloc>()
                  .add(SetBottomMenuEvent(menu: BottomMenu.values[index]));
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_bag), label: 'Bag'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: 'Person'),




            ],
            unselectedItemColor: Colors.grey,
            selectedItemColor: Colors.deepPurple,
          ),
        );
      },
    );
  }
}
