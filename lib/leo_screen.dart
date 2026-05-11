import 'dart:async';
import 'package:absensi_guru/leo_login.dart';
import 'package:flutter/material.dart';

class LeoScreen extends StatefulWidget {
  const LeoScreen({super.key});

  @override
  State<LeoScreen> createState() => _LeoScreen();
}

class _LeoScreen extends State<LeoScreen> {
  late Timer t;

  @override
  void initState() {
    t = Timer.periodic(
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
          gradient: RadialGradient(colors: [Colors.grey, Colors.black]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Absensi Guru App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 150),
            Icon(Icons.people, size: 80, color: Colors.white),
            SizedBox(height: 150),
            Text(
              'Developed By',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
