class LeoKelasModel {
  final int idt;
  final String kelas;
  final String nama;
  final int absen;

  LeoKelasModel({required this.idt, required this.kelas, required this.nama, required this.absen});


}
class Jurusan{
  final int id;
  final String jurusan;
  final List<LeoKelasModel> isi;

  Jurusan({required this.id, required this.jurusan,required this.isi});


}