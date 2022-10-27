import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/cubit/auth_cubit.dart';
import 'package:flutter_application_3/cubit/page_cubit.dart';
import 'package:flutter_application_3/ui/pages/bonus_page.dart';
import 'package:flutter_application_3/ui/pages/get_started_page.dart';
import 'package:flutter_application_3/ui/pages/sign_in_page.dart';
import 'package:flutter_application_3/ui/pages/sign_up_page.dart';
import 'package:flutter_application_3/ui/pages/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'ui/pages/splash_page.dart';

// Main Function
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // Routes for page navigation
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
