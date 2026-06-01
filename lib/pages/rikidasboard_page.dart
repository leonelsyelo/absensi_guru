import 'package:absensi_guru/leo_login.dart';
import 'package:absensi_guru/models/riki2_models.dart';
import 'package:absensi_guru/pages/riki_page.dart';
import 'package:absensi_guru/pages/rikihistory_page.dart';
import 'package:absensi_guru/pages/rikiout_page.dart';
import 'package:flutter/material.dart';

class RikidasboardPage extends StatefulWidget {
  const RikidasboardPage({super.key, required int id});

  @override
  State<RikidasboardPage> createState() => _RikidasboardPageState();
}

class _RikidasboardPageState extends State<RikidasboardPage> {
  int selecIndex = 0;
  Map<int, Riki2Models> mod = {
    0: Riki2Models(
      page: RikiPage(),
      icon: Icons.home,
      label: "Home",
      color: Colors.white,
    ),
    1: Riki2Models(
      page: RikihistoryPage(),
      icon: Icons.history,
      label: "History",
      color: Colors.white,
    ),
    2: Riki2Models(
      page: RikioutPage(),
      icon: Icons.output,
      label: "Out",
      color: Colors.white,
    ),
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.blue,
        selectedLabelStyle: TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white,
        unselectedLabelStyle: TextStyle(color: Colors.white),
        currentIndex: selecIndex,
        onTap: (value) {
          setState(() {
            selecIndex = value;
          });
        },
        items: mod.entries
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(e.value.icon, color: Colors.red),
                activeIcon: Icon(e.value.icon, color: e.value.color),
                label: e.value.label,
                backgroundColor: Colors.blueAccent,
              ),
            )
            .toList(),
      ),
      body: mod[selecIndex]!.page,
    );
  }
}
