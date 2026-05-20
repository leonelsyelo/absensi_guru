
import 'package:absensi_guru/leo_screen.dart';
import 'package:absensi_guru/pages/rikidasboard_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(AbsensiGuru());
}

class AbsensiGuru extends StatefulWidget {
  const AbsensiGuru({super.key});

  @override
  State<AbsensiGuru> createState() => _MyAbsensi();
}

class _MyAbsensi extends State<AbsensiGuru> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: RikidasboardPage());
  }
}
