import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodmarket_firebase/presintation/auth/login/bloc/login_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:foodmarket_firebase/presintation/auth/signup/bloc/signup_bloc.dart';
import 'package:foodmarket_firebase/presintation/main/bag/bloc/bag_bloc.dart';
import 'package:foodmarket_firebase/presintation/main/bloc/main_bloc.dart';
import 'package:foodmarket_firebase/presintation/main/detailpage/bloc/detailpage_bloc.dart';
import 'package:foodmarket_firebase/presintation/main/home/bloc/home_bloc.dart';
import 'package:foodmarket_firebase/presintation/main/profile/bloc/profile_bloc.dart';
import 'package:foodmarket_firebase/presintation/routes/app_routes.dart';
import 'package:foodmarket_firebase/presintation/routes/name_routes.dart';
import 'package:foodmarket_firebase/presintation/splash/splash_page.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (_)=>MainBloc()),
          BlocProvider(create: (_)=>BagBloc()),
          BlocProvider(create: (_)=>ProfileBloc()),
          BlocProvider(create: (_)=>HomeBloc()..add(ListProductEvent())..add(TabListEvent())),
          BlocProvider(create: (_)=>DetailpageBloc()),
          BlocProvider(create: (_)=>LoginBloc()),
        ],
        child:  const  MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splash,
          onGenerateRoute: AppRoutes.onGenerateRoute,
        ));
  }
}
