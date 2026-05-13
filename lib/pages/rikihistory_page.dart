 import 'package:flutter/material.dart';

class RikihistoryPage extends StatefulWidget {
  const RikihistoryPage({super.key});

  @override
  State<RikihistoryPage> createState() => _RikihistoryPageState();
}

class _RikihistoryPageState extends State<RikihistoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(
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

    );
  }
}

