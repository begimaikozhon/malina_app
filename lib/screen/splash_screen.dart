import 'package:flutter/material.dart';
import 'package:malina_app/app/bottom_nav_bar.dart';
import 'package:malina_app/constants/app_colors.dart';
import 'package:malina_app/screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const BottomNavBar(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.splashColor,
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Image(
              width: double.infinity,
              height: 300,
              fit: BoxFit.contain,
              image: AssetImage(
                'assets/icon.png',
              )),
        ),
      ),
    );
  }
}
