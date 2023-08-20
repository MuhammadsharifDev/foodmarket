import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmarket_firebase/presintation/main/bag/bloc/bag_bloc.dart';

class BagPage extends StatelessWidget {
  const BagPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BagBloc, BagState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(),
        );
      },
    );
  }
}
