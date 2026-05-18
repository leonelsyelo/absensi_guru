import 'package:absensi_guru/screen/leo_profile.dart';
import 'package:absensi_guru/services/leo_jurusan_service.dart';
import 'package:flutter/material.dart';

class LeoRplScreen extends StatefulWidget {
  const LeoRplScreen({super.key});

  @override
  State<LeoRplScreen> createState() => _LeoRplScreen();
}

class _LeoRplScreen extends State<LeoRplScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Guru Nyeni",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Pak Roni",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LeoProfile()),
            ),
            icon: Image.asset("assets/image/tupac.jpg"),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: jurusan.length,
        itemBuilder: (context, i) {
          return Card(
            color: Colors.lightBlueAccent,
            elevation: 5,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: ListTile(
              leading: Image.asset(jurusan[i].jurusan, width: 40, height: 40),
              title: Text(
                jurusan[i].jurusan,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              subtitle: Text(
                jurusan[i].kelas,
                style: TextStyle(fontSize: 10),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              onTap: () {
                setState(() {
                });
              },
            ),
          );
        },
      ),
    );
  }
}
