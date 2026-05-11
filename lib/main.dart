
import 'package:absensi_guru/leo_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ApkLeo());
}

class ApkLeo extends StatefulWidget {
  const ApkLeo({super.key});

  @override
  State<ApkLeo> createState() => _MyLeoState();
}

class _MyLeoState extends State<ApkLeo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: LeoScreen());
  }
}
