import 'dart:async';
import 'package:flight_app/presentation/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin {
  late final AnimationController _splashAnimationController;

  @override
  void initState() {
    super.initState();
    _splashAnimationController = AnimationController(vsync: this);
    Timer(const Duration(seconds: 3),
    ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder:(context) => const LoginScreen())));
  }

  @override
  void dispose() {
    _splashAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Lottie.asset(
          'assets/lottie/splash_screen.json',
          controller: _splashAnimationController,
          repeat: true,
          onLoaded: (composition) { // changes here
            // Configure the AnimationController with the duration of the
            // Lottie file and start the animation.
            _splashAnimationController
              ..duration = composition.duration
              ..forward();
          },
        ),
      ),
    );
  }
}