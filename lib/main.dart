import 'package:flutter/material.dart';
import 'package:onboarding_screen/screens/onboarding-screen.dart';
import 'package:onboarding_screen/screens/onboarding-screen.dart';
import 'package:onboarding_screen/sign_in/sign_in.dart';

void main() {
  runApp(
      const MyApp()); //const use when u want to fix a value : Final not fix value
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding-screen',
      theme: ThemeData.light(useMaterial3: true),
      home: OnBoardingScreen(),
    );
  }
}
