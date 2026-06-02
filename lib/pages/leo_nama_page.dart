import 'package:absensi_guru/pages/leo_kelas_page.dart';
import 'package:absensi_guru/pages/rikidasboard_page.dart';
import 'package:absensi_guru/pages/rikidone_page.dart';
import 'package:flutter/material.dart';

import '../services/leo_nama_service.dart';

class LeoNamaPage extends StatefulWidget {
  final int ids;
  const LeoNamaPage({super.key, required this.ids});

  @override
  State<LeoNamaPage> createState() => _LeoNamaPage();
}

class _LeoNamaPage extends State<LeoNamaPage> {
  @override
  Widget build(BuildContext context) {
    var isi = pilih[widget.ids].isi;
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              pilih[widget.ids].namaJurusan,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 2),
            Text(
              "Kelas ${pilih[widget.ids].namaJurusan}",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
        backgroundColor: Colors.blue,
        actions: [],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 2),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              pilih[widget.ids].namaJurusan,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 2),
          Expanded(
            child: ListView.builder(
              itemCount: pilih[widget.ids].isi.length,
              itemBuilder: (context, i) {
                return Card(
                  color: Colors.grey,
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  child: ListTile(
                    leading: ClipRRect(borderRadius: BorderRadius.circular(7)),
                    title: Text(
                      pilih[widget.ids].isi[i].nama,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      pilih[widget.ids].isi[i].nama,
                      style: TextStyle(fontSize: 10),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Masuk/Tidak:",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        SizedBox(width: 5),
                        Icon(
                          pilih[widget.ids].isi[i].mark
                              ? Icons.check
                              : Icons.cancel,
                          color: pilih[widget.ids].isi[i].mark
                              ? Colors.green
                              : Colors.red,
                        ),
                      ],
                    ),
                    onTap: () {
                      setState(() {
                        pilih[widget.ids].isi[i].mark =
                            !pilih[widget.ids].isi[i].mark;
                      });
                    },
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RikidonePage()),
                    );
                  },
                  child: Text(
                    'KIRIM',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
