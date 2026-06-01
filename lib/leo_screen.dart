import 'dart:async';
import 'package:absensi_guru/leo_login.dart';
import 'package:flutter/material.dart';

class LeoScreen extends StatefulWidget {
  const LeoScreen({super.key});

  @override
  State<LeoScreen> createState() => _LeoScreen();
}

class _LeoScreen extends State<LeoScreen> {
  late Timer w;

  @override
  void initState() {
    w = Timer.periodic(
      const Duration(seconds: 4),
      (timer) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LeoLogin()),
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/logo.jpg"),
            fit: BoxFit.contain,
            scale: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Absensi Guru",
              style: TextStyle(
                color: Colors.black,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 200),
            Icon(Icons.border_color_sharp, size: 80, color: Colors.black),
            SizedBox(height: 220),
            Text(
              'Made in LeoKi',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
