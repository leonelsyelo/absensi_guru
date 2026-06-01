import 'package:absensi_guru/pages/leo_kelas_page.dart';
import 'package:absensi_guru/services/leo_kelas_service.dart';
import 'package:flutter/material.dart';

import '../models/leo_kelas_model.dart';



class LeoIsiKelasPage extends StatefulWidget {
  const LeoIsiKelasPage({super.key, required this.id});

  @override
  State<LeoIsiKelasPage> createState() => _LeoIsiKelasPage();
  final int id;
}

class _LeoIsiKelasPage extends State<LeoIsiKelasPage> {
  //pop up class
  void showKelasDialog(BuildContext context, int s) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Kelas ${jur[s].jurusan}'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: jur[s].jurusan.length,
            itemBuilder: (context, i) {
              return GestureDetector(
                child: Text(jur[s].jurusan[i]),
                onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => LeoKelasPage(id: s),)),
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Tutup'),
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: SweepGradient(colors: [Colors.black, Colors.black]),
          ),
        ),
        leading: GestureDetector(
          child: ClipOval(child: Image.asset("assets/images/kitsune.jpg")),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LeoKelasPage(id: 1)),
          ),
        ),
        title: Column(
          children: [
            Text("Velyuu", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text(
              "X RPL 1",
              style: TextStyle(color: Colors.white, fontSize: 10),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: SweepGradient(colors: [Colors.black87, Colors.grey]),
        ),

        child: SingleChildScrollView(
          child: Column(
            children: [
              Text("JADWAL", style: TextStyle(color: Colors.white)),
              SizedBox(height: 20),
              Padding(
                padding: EdgeInsets.all(10),
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: jur.length,
                  itemBuilder: (context, s) {
                    return GestureDetector(
                      onTap: () => showKelasDialog(context, s),
                      child: Container(
                        margin: EdgeInsets.only(bottom: 12),
                        width: size.width,
                        height: 90,
                        decoration: BoxDecoration(
                          color: Colors.white12,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.white24),
                        ),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            SizedBox(width: 15),
                            Text(
                              jur[s].jurusan,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward_ios, color: Colors.white54, size: 16),
                            SizedBox(width: 10),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}