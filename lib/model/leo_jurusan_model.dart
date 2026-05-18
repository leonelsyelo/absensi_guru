class LeoJurusanModel {
  final String jurusan;
  final String kelas;
  final int id;

  LeoJurusanModel({
    required this.jurusan,
    required this.kelas,
    required this.id,
  });
}

class pilih {
  final List<LeoJurusanModel> RPL;
  final List<LeoJurusanModel> TKJ;
  final List<LeoJurusanModel> TSM;
  final List<LeoJurusanModel> TKR;
  final List<LeoJurusanModel> LPKC;
  final List<LeoJurusanModel> SIJA;
  final List<LeoJurusanModel> DPIB;
  final List<LeoJurusanModel> DKV;
  final List<LeoJurusanModel> ANM;

  pilih({
    required this.RPL,
    required this.TKJ,
    required this.TSM,
    required this.TKR,
    required this.LPKC,
    required this.SIJA,
    required this.DPIB,
    required this.DKV,
    required this.ANM,
  });
}
