import 'package:flutter/material.dart';
import 'package:geminiapp2/Constants/constant.dart';
import 'package:geminiapp2/Constants/routes.dart';

import 'package:geminiapp2/Screens/home_screen.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:geminiapp2/Screens/onboarding_screen.dart';

void main() {
  Gemini.init(apiKey: GEMINI_API_KEY);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const OnboardingScreen(),
    );
  }
}
