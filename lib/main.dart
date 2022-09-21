import 'package:flutter/material.dart';
import 'package:flutter_application_3/ui/pages/bonus_page.dart';
import 'package:flutter_application_3/ui/pages/get_started_page.dart';
import 'package:flutter_application_3/ui/pages/sign_up_page.dart';
import 'package:flutter_application_3/ui/pages/main_page.dart';

import 'ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get-started': (context) => GetStartedPage(),
        '/sign-up': (context) => SignUpPage(),
        '/bonus': (context) => BonusPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
