import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmarket_firebase/presintation/const/utils/appimages.dart';
import 'package:foodmarket_firebase/presintation/main/home/bloc/home_bloc.dart';
import 'package:foodmarket_firebase/presintation/model/text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            toolbarHeight: MediaQuery.of(context).size.height * 108 / 800,
            title: Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyleText.items(
                      text: 'FoodMarket',
                      size: 22,
                      color: const Color(0xff020202),
                      fontWeight: FontWeight.w500),
                  StyleText.items(
                      text: 'Let’s get some foods',
                      size: 14,
                      color: const Color(0xff8D92A3),
                      fontWeight: FontWeight.w300),
                ],
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: Image.asset(AppImages.user),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: media.size.height * 205 / 800,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.items.length,
                      itemBuilder: (context, index) {
                        return Material(
                          elevation: 0,
                          child: SizedBox(
                            width: media.size.width * 200 / 360,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(state.items[index].image),
                                const SizedBox(
                                  height: 10,
                                ),
                                StyleText.items(
                                    text: state.items[index].text,
                                    size: 16,
                                    fontWeight: FontWeight.w400,
                                    color: const Color(0xff020202)),
                              ],
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 18,
                        );
                      }),
                ),
                const SizedBox(
                  height: 24,
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
