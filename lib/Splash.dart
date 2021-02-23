import 'package:ClickandPick/BuyerDashboard/buyerdashboard.dart';
import 'package:ClickandPick/Intro.dart';
import 'package:ClickandPick/Login/login.dart';
import 'package:ClickandPick/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:ClickandPick/setting/settings_page.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BuyerDashboard(),
          ));
    });
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Container(
            height: 270.0,
            width: 270.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Logo.png'),
              ),
            ),
          ),
        ));
  }
}
