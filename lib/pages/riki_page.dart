import 'package:absensi_guru/main.dart';
import 'package:flutter/material.dart';

class RikiPage extends StatefulWidget {
  const RikiPage({super.key});

  @override
  State<RikiPage> createState() => _RikiPageState();
}

class _RikiPageState extends State<RikiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
       title: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: [
           Text(
             "ABSENSI GURU",
             style: TextStyle(
               fontSize: 20,
               fontWeight: FontWeight.bold,
               color: Colors.white,
             ),
           ),
           SizedBox(height: 2),
           Text(
               "kelas X",
             style: TextStyle(
               fontSize: 15,
               color: Colors.white,
             ),
           ),
         ],
       ),
      ),
      drawer: Drawer(
        elevation: 5,
        child: Container(
          width: double.infinity,
          height:double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.white],
              begin: Alignment.topCenter,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
    );
  }
}

