import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodmarket_firebase/presintation/auth/login/login_page.dart';
import 'package:foodmarket_firebase/presintation/const/utils/app_icons.dart';
import 'package:foodmarket_firebase/presintation/model/elevatedbottom_style.dart';
import 'package:foodmarket_firebase/presintation/model/text_style.dart';
import 'package:foodmarket_firebase/presintation/model/textfield_model.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 108 / 800,
        leading:  Padding(
          padding: const EdgeInsets.only(top: 40,left: 24,bottom: 39),
          child: Container(
            decoration:  BoxDecoration(
              color: const Color(0xffEB0029),
              borderRadius: BorderRadius.circular(10),
            ),
            child: IconButton(onPressed: (){
              Navigator.pop(context);
            },icon: const Icon(Icons.arrow_back_ios),),
          ),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyleText.items(
                text: 'Sign In',
                size: 22,
                color: const Color(0xff020202),
                fontWeight: FontWeight.w500),
            StyleText.items(
                text: 'Register and eat',
                size: 14,
                color: const Color(0xff8D92A3),
                fontWeight: FontWeight.w300),
          ],
        ),
      ),
      body: SizedBox(
        height: media.size.height * 580 / 800,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 26,
              ),
              const Center(child: CircleAvatar(backgroundColor: Colors.grey,maxRadius: 60)),
              StyleText.items(
                  text: 'Full Name',
                  size: 16,
                  color: const Color(
                    0xff020202,
                  ),
                  fontWeight: FontWeight.w400),
              const SizedBox(height: 16,),
              TextFormFieldsItems.items(text: 'Type your full name'),
              const SizedBox(height: 16,),
              StyleText.items(
                text: 'Email Address',
                size: 16,
                color: const Color(
                  0xff020202,
                ),),
              const SizedBox(height: 16,),
              TextFormFieldsItems.items(text: 'Type your email address'),
              const SizedBox(height: 16,),
              StyleText.items(
                text: 'Password',
                size: 16,
                color: const Color(
                  0xff020202,
                ),),
              const SizedBox(height: 16,),
              TextFormFieldsItems.items(text: 'Type your email address'),
              const SizedBox(height: 24,),
              ElevatedButton(
                  style: ElevatedBottomStyle.items(text: 'Login', radius: 8, width: double.infinity,color: const Color(0xffEB0029),),
                  onPressed: (){}, child: const Text('login')),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyleText.items(text: 'I Already Have an Account', size: 10),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginPage(),));
                  }, child: StyleText.items(text: 'Login', size: 14,color: const Color(0xffEB0029)),),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
