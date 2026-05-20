import 'package:absensi_guru/pages/riki_page.dart';
import 'package:flutter/material.dart';

class RikidonePage extends StatefulWidget {
  const RikidonePage({super.key});

  @override
  State<RikidonePage> createState() => _RikidonePageState();
}

class _RikidonePageState extends State<RikidonePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
        title:Row(
         mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(Icons.output, size: 20, color: Colors.black,
            ),
            ElevatedButton(onPressed: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>RikiPage()),
            );
            }, child: null),
          ],
        ),
      ),
      body: Container(
        height:  size.height,
        width:  size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.white30, Colors.blueAccent]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.check_circle_outline_outlined, size: 200, color: Colors.lightGreenAccent),
          ],
        ),
      ),
    );
  }
}

