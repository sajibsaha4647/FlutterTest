import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_interview/View/LoginScreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/Routes/Routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {

  late AnimationController _controller;
  late Animation<TextStyle> _animation;

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 4), () {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
            (route) => false,
      );
    });

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
        milliseconds: 2000,
      ),
    );

    _animation =TextStyleTween(
      begin: TextStyle(
        fontSize: 20.w,
        color: Colors.yellowAccent,
        fontWeight: FontWeight.w300,
      ),
      end: TextStyle(
        fontSize: 35.w,
        color: Colors.blue,
        fontWeight: FontWeight.w900,
      ),
    ).animate(_controller);
    _animation.addListener(() {
      setState(() {});
    });
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Colors.blue,
              Colors.red,
            ],
          ),
        ),
        child: Center(
            child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Interview With",
                  style: _animation.value,
              ),
              Text(
                "Sajib Saha",
                  style: _animation.value,
              )
            ],
          ),
        ),
      ),
    );
  }
}
