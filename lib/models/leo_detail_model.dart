
class LeoDetailModel {
  final int idd;
  final String nama;
  final int absen;
  bool mark = false;

  LeoDetailModel({required this.idd, required this.nama, required this.absen,});
}

class Jurusan {
  final int idb;
  final String namaJurusan;
  final List<LeoDetailModel> isi;


  Jurusan({required this.idb, required this.namaJurusan,required this.isi,});
}