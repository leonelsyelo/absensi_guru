import 'package:absensi_guru/pages/rikidasboard_page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Riki());
}
class Riki extends StatefulWidget {
  const Riki({super.key});

  @override
  State<Riki> createState() => _RikiState();
}

class _RikiState extends State<Riki> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,home:RikidasboardPage());
  }
}
