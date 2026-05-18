import 'package:flutter/material.dart';

class RikioutPage extends StatefulWidget {
  const RikioutPage({super.key});

  @override
  State<RikioutPage> createState() => _RikioutPageState();
}

class _RikioutPageState extends State<RikioutPage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white30, Colors.blueAccent]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.output, size: 200, color: Colors.black),
            Text(
              "OUT",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
