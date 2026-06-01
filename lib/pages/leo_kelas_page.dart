import 'package:absensi_guru/services/leo_kelas_service.dart';
import 'package:flutter/material.dart';

import '../models/leo_kelas_model.dart';


class LeoKelasPage extends StatefulWidget {
  final int id;
  const LeoKelasPage({super.key, required this.id});

  @override
  State<LeoKelasPage> createState() => _LeoKelasPage();
}

class _LeoKelasPage extends State<LeoKelasPage> {
  late LeoKelasModel cla;
  @override
  void initState() {
    cla = jur.firstWhere((element) => element.jurusan[widget.id] == widget.id) as LeoKelasModel;
    super.initState();
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
      ),
      body: Center(
      ),
    );
  }
}