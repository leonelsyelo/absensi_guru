import 'package:absensi_guru/models/kiri_model.dart';
import 'package:absensi_guru/pages/rikianim_page.dart';
import 'package:absensi_guru/pages/rikidkv_page.dart';
import 'package:absensi_guru/pages/rikidpib_page.dart';
import 'package:absensi_guru/pages/rikilpkc_page.dart';
import 'package:absensi_guru/pages/rikirpl_page.dart';
import 'package:absensi_guru/pages/rikisija_page.dart';
import 'package:absensi_guru/pages/rikitbsm_page.dart';
import 'package:absensi_guru/pages/rikitkj_page.dart';
import 'package:absensi_guru/pages/rikitkr_page.dart';

List<KiriModel> kiri=[
  KiriModel(jurusan: "RPL", id: 1, screen: RikirplPage()),
  KiriModel(jurusan: "SIJA", id: 2, screen: RikisijaPage()),
  KiriModel(jurusan: "LPKC", id: 3, screen: RikilpkcPage()),
  KiriModel(jurusan: "TKR", id: 4, screen: RikitkrPage()),
  KiriModel(jurusan: "TBSM", id: 5, screen: RikitbsmPage()),
  KiriModel(jurusan: "TKJ", id: 6, screen: RikitkjPage()),
  KiriModel(jurusan: "ANIMASI", id: 7, screen: RikianimPage()),
  KiriModel(jurusan: "DPIB", id: 8, screen: RikidpibPage()),
  KiriModel(jurusan: "DKV", id: 9, screen: RikidkvPage()),

];