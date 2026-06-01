import 'package:flutter/material.dart';
import '../leo_login.dart';

class RikihistoryPage extends StatefulWidget {
  const RikihistoryPage({super.key});

  @override
  State<RikihistoryPage> createState() => _RikihistoryPageState();
}

class _RikihistoryPageState extends State<RikihistoryPage> {
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
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/gufron.jpg"),
                    ),
                    SizedBox(width: 40),
                    Column(crossAxisAlignment: CrossAxisAlignment.start),
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
              Divider(color: Colors.black),
              ListTile(
                leading: Icon(Icons.account_circle, color: Colors.black),
                title: Text(
                  "Tentang Saya",
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text(
                          "nama:dr.leo                           "
                              "status:guru                           "
                              "mapel:agama",
                        ),
                      ),
                    );
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.black),
                title: Text("Email", style: TextStyle(color: Colors.black)),
                onTap: () {
                  setState(() {
                    showDialog(
                      context: context,
                      builder: (context) =>
                          AlertDialog(title: Text("leonel@gmail.com")),
                    );
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.output, color: Colors.black),
                title: Text("Sign Out", style: TextStyle(color: Colors.black)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LeoLogin()),
                  );
                },
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
                  'RIWAYAT ABSENSI',
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
    );
  }
}
