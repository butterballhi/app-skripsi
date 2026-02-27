class OpenKyorugiInfo {
  final int id;
  final int idKategori;
  final String judul;
  final String teknikLegal;
  final String teknikIlegal;
  final String aturanTambahan;

  OpenKyorugiInfo({
    required this.id,
    required this.idKategori,
    required this.judul,
    required this.teknikLegal,
    required this.teknikIlegal,
    required this.aturanTambahan,
  });

  /// JSON → Object
  factory OpenKyorugiInfo.fromJson(Map<String, dynamic> json) {
    return OpenKyorugiInfo(
      id: json['id'],
      idKategori: json['id_kategori'],
      judul: json['judul'] ?? '',
      teknikLegal: json['teknik_legal'] ?? '',
      teknikIlegal: json['teknik_ilegal'] ?? '',
      aturanTambahan: json['aturan_tambahan'] ?? '',
    );
  }

  /// Object → JSON (opsional)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_kategori': idKategori,
      'judul': judul,
      'teknik_legal': teknikLegal,
      'teknik_ilegal': teknikIlegal,
      'aturan_tambahan': aturanTambahan,
    };
  }
}