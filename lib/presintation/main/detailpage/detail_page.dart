import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmarket_firebase/presintation/const/utils/appimages.dart';
import 'package:foodmarket_firebase/presintation/main/detailpage/bloc/detailpage_bloc.dart';
import 'package:foodmarket_firebase/presintation/main/home/bloc/home_bloc.dart';
import 'package:foodmarket_firebase/presintation/model/elevatedbottom_style.dart';
import 'package:foodmarket_firebase/presintation/model/text_style.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key,required this.items});
final TabListProduct items;
  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context);
    return BlocBuilder<DetailpageBloc, DetailpageState>(
  builder: (context, state) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: 478,
            flexibleSpace: Image.asset(items.image,fit: BoxFit.cover,),
            leading:Padding(
              padding: const EdgeInsets.only(left: 20,top: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color:const Color(0xffEB0029),
                ),
                child: IconButton(onPressed: (){
                  Navigator.pop(context);
                },icon: const Icon(Icons.arrow_back_ios),),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child:Container(
              height: media.size.height*360/800,
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(left: 6,right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   const SizedBox(height: 26,),
                    Row(
                      children: [
                        Column(
                          children: [
                            StyleText.items(text: items.detailName, size: 16,color: const Color(0xff020202),fontWeight: FontWeight.w400),
                            Image.asset(AppImages.stars_images),
                          ],
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: (){
                                context.read<DetailpageBloc>().add(CountRemoveEvent(count: state.count));
                              },
                              child: Container(
                                height: 26,
                                width: 26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: const Icon(Icons.remove),
                              ),
                            ),
                            const SizedBox(width: 5,),
                            Text(state.count.toString()),
                            const SizedBox(width: 5,),
                            GestureDetector(
                              onTap: (){
                                context.read<DetailpageBloc>().add(CountAddEvent(count: state.count));
                              },
                              child: Container(
                                height: 26,
                                width: 26,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),
                                ),
                                child: const Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 12,),
                    StyleText.items(text: items.detailComment,
                        size: 16,color: const Color(0xff8D92A3)),
                    const SizedBox(height: 16,),
                    StyleText.items(text: 'Ingredients:', size: 14,color: const Color(0xff020202)),
                    StyleText.items(text: 'Seledri, telur, blueberry, madu.:', size: 14,color: const Color(0xff8D92A3)),
                    const SizedBox(height: 40,),
                    Row(
                      children: [
                        StyleText.items(text: 'Total Price:', size: 14,color: const Color(0xff8D92A3)),
                        StyleText.items(text: 'IDR 12.289.000:', size: 14,color: const Color(0xff020202)),
                    const Spacer(),
                        ElevatedButton(
                            style:ElevatedBottomStyle.items(radius: 8, width: media.size.width*163/360,color: const Color(0xffEB0029)),
                            onPressed: (){}, child:StyleText.items(text: 'Order Now', size: 14,color: const Color(0xffFBF2CF))),
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  },
);
  }
}





