import 'package:flutter/material.dart';
import 'package:morept_fitness_app/screens/selectable_navigation_screen/selectable_navigation_screen.dart';
import 'package:provider/provider.dart';
import 'providers/questions_providers.dart';
import 'screens/auth/loginScreen/login_screen.dart';
import 'screens/auth/questionsScreens/multi_step_1.dart';
import 'screens/auth/questionsScreens/multi_step_2.dart';
import 'screens/auth/questionsScreens/multi_step_3.dart';
import 'screens/auth/questionsScreens/multi_step_4.dart';
import 'screens/auth/questionsScreens/multi_step_5.dart';
import 'screens/auth/questionsScreens/multi_step_6.dart';
import 'screens/auth/questionsScreens/multi_step_7.dart';
import 'screens/auth/signupScreen/signup_screen.dart';
import 'screens/homeScreen/home_screen.dart';
import 'screens/introSliderScreen/intro_slider_screen.dart';
import 'screens/splashScreen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // ignore: always_specify_types
      providers: [
        ChangeNotifierProvider<QuestionsProvider>.value(
          value: QuestionsProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'More PT Fitness', // web link: https://morept.world/
        theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
          splashColor: Colors.blue[200],
        ),
        home: const SplashScreen(),
        routes: <String, WidgetBuilder>{
          SplashScreen.routeName: (_) => const SplashScreen(),
          IntroSliderScreen.routeName: (_) => const IntroSliderScreen(),
          LoginScreen.routeName: (_) => const LoginScreen(),
          SignupScreen.routeName: (_) => const SignupScreen(),
          HomeScreen.routeName: (_) => const HomeScreen(),
          // selectable botton pages
          SelectableNavigationScreen.routeName: (_) =>
              SelectableNavigationScreen(),
          // Questions
          MultiStep1.routeName: (_) => const MultiStep1(),
          MultiStep2.routeName: (_) => const MultiStep2(),
          MultiStep3.routeName: (_) => const MultiStep3(),
          MultiStep4.routeName: (_) => const MultiStep4(),
          MultiStep5.routeName: (_) => const MultiStep5(),
          MultiStep6.routeName: (_) => const MultiStep6(),
          MultiStep7.routeName: (_) => const MultiStep7(),
        },
      ),
    );
  }
}

// flutter build web
// firebase deploy --only hosting
// https://morept-app.web.app