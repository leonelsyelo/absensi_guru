class LeoKelasModel {
  final String jurusan;
  final String nama;
  final int absen;

  LeoKelasModel({
    required this.jurusan,
    required this.nama,
    required this.absen,
  });
}

class Jurusan {
  final int id;
  final String classjurusan;

  Jurusan({required this.id, required this.classjurusan});
}
