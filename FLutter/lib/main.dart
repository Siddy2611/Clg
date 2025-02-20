import 'package:activitytracker/Gender.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:activitytracker/SignUpPage.dart';
import 'package:activitytracker/SignInPage.dart';
import 'package:activitytracker/FrontScreen.dart';
import 'package:activitytracker/Goals.dart';
import 'package:activitytracker/Height.dart';
import 'package:activitytracker/Weight.dart';
import 'package:activitytracker/Age.dart';

void main() async{
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/signin': (context) => SigninscreenWidget(),
        '/signup': (context) => SignupScreen(),
        '/goals': (context) =>GoalsPage(),
        '/Age': (context) =>AgeSelectionScreen(),
        '/Gender': (context) =>GenderSelectionScreen(),
        '/Height': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as int;
          return HeightSelectionScreen(currentStep: args);
        },
        '/Weight': (context) {
          final args = ModalRoute.of(context)!.settings.arguments as int;
          return WeightSelectionScreen(currentStep: args);
        },
      },
      home: WelcomescreenWidget(),
    );
  }
}

