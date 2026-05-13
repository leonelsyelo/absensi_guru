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
             style: TextStyle(
               fontSize: 15,
               color: Colors.white,
             ),
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
                    builder: (context) => AlertDialog(title: Text("silakan edit")),
                  );
                });
              },
              child: Text(
                "edit profail",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
              ),
            ),

              ],
        ),
      ),


        );
  }
}

