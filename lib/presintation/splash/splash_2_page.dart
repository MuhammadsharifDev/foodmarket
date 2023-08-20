import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodmarket_firebase/presintation/model/text_style.dart';

class SplashPage2 extends StatelessWidget {
  const SplashPage2({super.key});

  @override
  Widget build(BuildContext context) {
    var media=MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () async {
           await FirebaseAuth.instance.signOut();
          }, icon: const Icon(Icons.login_outlined,color: Colors.red,)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(80, 130, 80, 0),
        child: Column(
          children: [
            SizedBox(
                width: media.size.width*200/365,
                height: media.size.height*289/800,
                child: Image.asset('assets/png_image/splash._2jpg')),
            const SizedBox(height: 33,),
            StyleText.items(text: 'Yeay! Completed', size: 20,fontWeight: FontWeight.w400,color: const Color(0xff020202)),
            StyleText.items(text: "Now you are able to order\nsome foods as a self-reward", size: 14,fontWeight: FontWeight.w400,color: Color(0xff8D92A3)),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xffEB0029),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: Size(media.size.width*200/365, 45),
              ),
                onPressed: (){}, child: StyleText.items(text: 'Finds Food', size: 14,color: Colors.white)),

          ],
        ),
      )
    );
  }
}
