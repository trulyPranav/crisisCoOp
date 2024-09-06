import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:yuva_hack/pages/constructor.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _screenChanger = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5), () {
      // if (mounted) {
        setState(() {
          _screenChanger = true;
        });
      // }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: _screenChanger 
            ? const Constructor()
            : LoadingAnimationWidget.threeRotatingDots(
                color: Colors.white,
                size: 100,
              ),
      ),
    );
  }
}
