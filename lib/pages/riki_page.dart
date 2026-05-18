import 'package:absensi_guru/pages/rikianim_page.dart';
import 'package:absensi_guru/pages/rikidkv_page.dart';
import 'package:absensi_guru/pages/rikidpib_page.dart';
import 'package:absensi_guru/pages/rikilpkc_page.dart';
import 'package:absensi_guru/pages/rikirpl_page.dart';
import 'package:absensi_guru/pages/rikisija_page.dart';
import 'package:absensi_guru/pages/rikitbsm_page.dart';
import 'package:absensi_guru/pages/rikitkj_page.dart';
import 'package:absensi_guru/pages/rikitkr_page.dart';
import 'package:absensi_guru/services/kiriservice_page.dart';
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
              style: TextStyle(fontSize: 15, color: Colors.white),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            AppBar(
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    ('assets/images/gufron.jpg'),
                    width: 30,
                    height: 30,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  showDialog(
                    context: context,
                    builder: (context) =>
                        AlertDialog(title: Text("Silakan edit")),
                  );
                });
              },
              child: Text(
                "Edit Profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'PILIH JURUSAN',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RikirplPage()));},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'RPL',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RikisijaPage()));},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'SIJA',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RikilpkcPage()));},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'LPKC',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RikitkrPage()));},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.tealAccent,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'TKR',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RikitbsmPage()));},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'TBSM',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RikitkjPage()));},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'TKJ',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RikianimPage()));},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'ANIMASI',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RikidpibPage()));},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'DPIB',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => RikidkvPage()));},
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    border: Border.all(color: Colors.blue),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'DKV',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
