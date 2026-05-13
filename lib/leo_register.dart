import 'package:absensi_guru/leo_login.dart';
import 'package:flutter/material.dart';

class LeoRegister extends StatefulWidget {
  const LeoRegister({super.key});

  @override
  State<LeoRegister> createState() => _LeoRegister();
}

class _LeoRegister extends State<LeoRegister> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _confrimPw = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _name = TextEditingController();

  IconData _eye = Icons.remove_red_eye;
  bool _regis = true;

  void eye() {
    setState(() {
      if (_regis) {
        _regis = false;
        _eye = Icons.remove_red_eye;
      } else {
        _regis = true;
        _eye = Icons.remove_red_eye_outlined;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        width: size.width,
        height: size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.blue, Colors.blueAccent]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Daftar Di sini",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 12),
                Text("User Name", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            TextField(
              controller: _name,
              decoration: InputDecoration(
                hintText: "Name User",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 12),
                Text(
                  "User Name Gmail",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextField(
              controller: _username,
              decoration: InputDecoration(
                hintText: "Name Gmail",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 12),
                Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            TextField(
              controller: _confrimPw,
              obscureText: _regis,
              decoration: InputDecoration(
                hintText: "Password",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(onPressed: eye, icon: Icon(_eye)),
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 12),
                Text(
                  "Confrim Password",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            TextField(
              controller: _password,
              obscureText: _regis,
              decoration: InputDecoration(
                hintText: "Confirm Password",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(onPressed: eye, icon: Icon(_eye)),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                    side: BorderSide(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LeoLogin()),
                    );
                  },
                  child: Text("Kembali"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black,
                  ),
                  onPressed: () {
                    if (_name.text == "syello" &&
                        _password.text == "ganteng") {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            AlertDialog(title: Text("Pendaftaran sukses")),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Pendaftaran Gagal"),
                          content: Text("Harap isi Format Dengan Benar"),
                        ),
                      );
                    }
                  },
                  child: Text("Daftar"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
