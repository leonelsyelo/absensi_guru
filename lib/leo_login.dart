import 'package:absensi_guru/leo_register.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LeoLogin extends StatefulWidget {
  const LeoLogin({super.key});

  @override
  State<LeoLogin> createState() => _LeoLogin();
}

class _LeoLogin extends State<LeoLogin> {
  TextEditingController _username = TextEditingController();
  TextEditingController _password = TextEditingController();

  bool _isSecure = true;
  IconData _isObsecureIcon = Icons.remove_red_eye;



  void isObsecure() {
    setState(() {
      if (_isSecure) {
        _isSecure = false;
        _isObsecureIcon = CupertinoIcons.eye;
      } else {
        _isSecure = true;
        _isObsecureIcon = CupertinoIcons.eye_fill;
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
          gradient: LinearGradient(colors: [Colors.grey, Colors.black]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Absensi App",
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
                Text("Username", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            TextField(
              controller: _username,
              decoration: InputDecoration(
                hintText: "Username",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            SizedBox(width: 70),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(width: 12),
                Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            TextField(
              controller: _password,
              obscureText: _isSecure,
              decoration: InputDecoration(
                hintText: "Gmail",
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                suffixIcon: IconButton(
                  onPressed: isObsecure,
                  icon: Icon(_isObsecureIcon),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    side: BorderSide(color: Colors.blue),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LeoRegister()),
                    );
                  },
                  child: Text("Daftar"),
                ),
              ],
            ),
            SizedBox(height: 0.75),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10),
                Row(crossAxisAlignment: CrossAxisAlignment.end),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    if (_username.text == "leonel ganteng" &&
                        _password.text == "ganteng") {
                      showDialog(
                        context: context,
                        builder: (context) =>
                            AlertDialog(title: Text("Login sukses")),
                      );
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text("Login"),
                          content: Text("gagal boy"),
                        ),
                      );
                    }
                  },
                  child: Text("Login"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
