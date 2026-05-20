import 'package:flutter/material.dart';

class RikioutPage extends StatelessWidget {
  const RikioutPage({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white70,Colors.blue,Colors.blueAccent]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.output,
              size: 300,
              color: Colors.black,
            ),
            Text(
              "out",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50,color: Colors.black),
            ),
          ],
        ),
      ),

    );
  }
}
