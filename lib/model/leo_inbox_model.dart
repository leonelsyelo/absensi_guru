class InboxModel {
  final int id;
  final String judul;
  final String pesan;
  final String sender;
  final String reciver;
  final String tanggal;
  final String attachment;
  bool isRead = false;

  InboxModel({
    required this.id,
    required this.judul,
    required this.pesan,
    required this.sender,
    required this.reciver,
    required this.tanggal,
    required this.attachment,
    required this. isRead,

  });
}
