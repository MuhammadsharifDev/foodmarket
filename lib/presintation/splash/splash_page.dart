import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodmarket_firebase/presintation/auth/login/login_page.dart';
import 'package:foodmarket_firebase/presintation/const/utils/app_colors.dart';
import 'package:foodmarket_firebase/presintation/const/utils/app_icons.dart';
import 'package:foodmarket_firebase/presintation/routes/name_routes.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Navigator.pushReplacementNamed(context, Routes.login));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.red,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.splash_icon),
            Text(
              'FoodMarket',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 32,
                  color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
