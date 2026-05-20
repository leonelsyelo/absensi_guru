import 'package:flutter/cupertino.dart';

class LeoNamaModel {
  final int id;
  final String nama;
  final int absen;
  final String jurusan;
  final Widget screen;

  LeoNamaModel({
    required this.id,
    required this.nama,
    required this.absen,
    required this.jurusan,
    required this.screen,
  });
}
