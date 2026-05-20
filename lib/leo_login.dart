import 'package:absensi_guru/leo_register.dart';
import 'package:absensi_guru/pages/riki_page.dart';
import 'package:absensi_guru/pages/rikidasboard_page.dart';
import 'package:flutter/material.dart';

class LeoLogin extends StatefulWidget {
  const LeoLogin({super.key});

  @override
  State<LeoLogin> createState() => _LeoLogin();
}

class _LeoLogin extends State<LeoLogin> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool _mataMelek = true;
  IconData _mataMerem = Icons.remove_red_eye;

  void isObscureText() {
    setState(() {
      if (_mataMelek) {
        _mataMelek = false;
        _mataMerem = Icons.remove_red_eye_outlined;
      } else {
        _mataMelek = true;
        _mataMerem = Icons.remove_red_eye;
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
              "Absensi Guru",
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
                Text("Gmail", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            TextField(
              controller: _username,
              decoration: InputDecoration(
                hintText: "Isi Gmail",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 12),
                Text("pasword", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            TextField(
              controller: _password,
              obscureText: _mataMelek,
              decoration: InputDecoration(
                hintText: "Password",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  onPressed: isObscureText,
                  icon: Icon(_mataMerem),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                side: BorderSide(color: Colors.white),
              ),
              onPressed: () {
                if (_username.text == "l" && _password.text == "l") {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RikidasboardPage()),
                  );
                  showDialog(
                    context: context,
                    builder: (context) =>
                        AlertDialog(title: Text("login sukses")),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Login Gagal"),
                      content: Text("Harap Isi Dengan Benar"),
                    ),
                  );
                }
              },
              child: Text("login"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Belum Punya Akun?",
                  style: TextStyle(color: Colors.white),
                ),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LeoRegister()),
                  ),
                  child: const Text(
                    "Daftar",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
