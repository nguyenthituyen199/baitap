import 'dart:async';
import '../screens/dieu_huong_hienthi.dart';
import '../styles/color.dart';
import 'package:flutter/material.dart';

class HienThiLogo extends StatefulWidget {
  const HienThiLogo({super.key});

  @override
  State<HienThiLogo> createState() => _HienThiLogoState();
}

class _HienThiLogoState extends State<HienThiLogo> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DieuHuong()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                primaryColor,
                secondaryColor,
              ]),
        ),
        child: Image.asset(
          'assets/images/LOGO.png',
        ),
      ),
    );
  }
}
