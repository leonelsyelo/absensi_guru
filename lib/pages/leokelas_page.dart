import 'package:flutter/material.dart';

class LeokelasPage extends StatefulWidget {
  const LeokelasPage({super.key, required int id});

  @override
  State<LeokelasPage> createState() => _LeokelasPageState();
}

class _LeokelasPageState extends State<LeokelasPage> {
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
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
            Card(
              elevation: 1,
            )
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'PILIH KELAS',
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
