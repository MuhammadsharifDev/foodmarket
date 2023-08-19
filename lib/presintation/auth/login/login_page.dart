import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodmarket_firebase/presintation/auth/signup/sigup_page.dart';
import 'package:foodmarket_firebase/presintation/const/utils/app_icons.dart';
import 'package:foodmarket_firebase/presintation/model/elevatedbottom_style.dart';
import 'package:foodmarket_firebase/presintation/model/text_style.dart';
import 'package:foodmarket_firebase/presintation/model/textfield_model.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: MediaQuery.of(context).size.height * 108 / 800,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StyleText.items(
                text: 'Sign In',
                size: 22,
                color: const Color(0xff020202),
                fontWeight: FontWeight.w500),
            StyleText.items(
                text: 'Find your best ever meal',
                size: 14,
                color: const Color(0xff8D92A3),
                fontWeight: FontWeight.w300),
          ],
        ),
      ),
      body: SizedBox(
        height: media.size.height * 519 / 800,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 26,
              ),
              StyleText.items(
                  text: 'Email Adress',
                  size: 16,
                  color: const Color(
                    0xff020202,
                  ),
                  fontWeight: FontWeight.w400),
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
              TextFormFieldsItems.items(text: 'Type your password'),
              const SizedBox(height: 24,),
              ElevatedButton(
                  style: ElevatedBottomStyle.items(text: 'Login', radius: 8, width: double.infinity,color: const Color(0xffEB0029),),
                  onPressed: (){}, child: const Text('login')),
              Center(child: TextButton(onPressed: (){}, child: const Text('Forgot password',style: TextStyle(color: Colors.red),))),
              const SizedBox(height: 10,),
              Center(child: StyleText.items(text: '- OR Continue with -', size: 12,color: Colors.grey)),
              const SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      style: ElevatedBottomStyle.items(radius: 50, width: media.size.width*108/360,color: Colors.pinkAccent.withOpacity(0.7)),
                      onPressed: (){}, child: Row(
                    children: [
                      SvgPicture.asset('assets/svg_icons/google_icon.svg'),
                      const SizedBox(width: 5,),
                      StyleText.items(text: 'Google', size: 10),
                    ],
                  )),
                  const SizedBox(width: 10,),
                  ElevatedButton(
                      style: ElevatedBottomStyle.items(radius: 50, width: media.size.width*108/360,color: Colors.pinkAccent.withOpacity(0.7)),
                      onPressed: (){}, child: Row(
                    children: [
                      SvgPicture.asset(AppIcons.facebook_icon),
                      const SizedBox(width: 5,),
                      StyleText.items(text: 'Facebook', size: 10),
                    ],
                  )),
                ],
              ),
              const SizedBox(height: 24,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  StyleText.items(text: 'Create An Account', size: 10),
                  TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage(),));
                  }, child: StyleText.items(text: 'Sign Up', size: 14,color: const Color(0xffEB0029)),),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
