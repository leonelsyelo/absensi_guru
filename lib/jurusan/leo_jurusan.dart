import 'package:absensi_guru/screen/leo_profile.dart';
import 'package:absensi_guru/services/leo_jurusan_service.dart';
import 'package:absensi_guru/services/leo_pilihjurusan_service.dart';
import 'package:flutter/material.dart';

class LeoJurusan extends StatefulWidget {
  const LeoJurusan({super.key});

  @override
  State<LeoJurusan> createState() => _LeoJurusan();
}

class _LeoJurusan extends State<LeoJurusan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Guru Matematika",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Pak wilis",
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
            icon: Image.asset("assets/image/img_1.png"),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: pilihan.length,
        itemBuilder: (context, i) {
          SizedBox(height: 50);
          return Card(
            color: Colors.lightBlueAccent,
            elevation: 10,
            margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Title(color: Colors.black, child:
                  Text(pilihan[i].jurusan, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white,
                  ),
                  ),
                  ),
                  ElevatedButton(
                    style: ButtonStyle(fixedSize: WidgetStatePropertyAll(Size.fromHeight(30),),
                      backgroundColor: WidgetStatePropertyAll(Colors.indigo),
                    ),
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pilihan[i].screen
                      ),
                    ),
                    child: Text(
                      "Cek",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}