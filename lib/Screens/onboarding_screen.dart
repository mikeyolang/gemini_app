import 'package:flutter/material.dart';
import 'package:geminiapp2/Screens/home_screen.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';

// ignore: must_be_immutable
class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MyHomePage(),
        ),
      ),
      onSkip: () => print("Skipping"),
      footerBgColor: Colors.blue,
      activeDotColor: Colors.white,
      footerRadius: 15,
      slides: [
        IntroScreen(
          title: "Chat",
          description: "Chat Very Easily",
          imageAsset: "",
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: "Chat",
          description: "Chat Very Easily",
          imageAsset: "",
          headerBgColor: Colors.white,
        ),
        IntroScreen(
          title: "Chat",
          description: "Chat Very Easily",
          imageAsset: "",
          headerBgColor: Colors.white,
        ),
      ],
    );
    return Scaffold(
      body: screens,
    );
  }
}
