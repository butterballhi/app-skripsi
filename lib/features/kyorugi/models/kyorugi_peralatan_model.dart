class KyorugiPeralatan {
  final int id;
  final int idKategori;
  final String judul;
  final String peralatanWajib;
  final String peralatanTambahan;
  final String catatanSeragam;
  final String image;

  KyorugiPeralatan({
    required this.id,
    required this.idKategori,
    required this.judul,
    required this.peralatanWajib,
    required this.peralatanTambahan,
    required this.catatanSeragam,
    required this.image,
  });

  /// JSON → Object
  factory KyorugiPeralatan.fromJson(Map<String, dynamic> json) {
    return KyorugiPeralatan(
      id: json['id'],
      idKategori: json['id_kategori'],
      judul: json['judul'] ?? '',
      peralatanWajib: json['peralatan_wajib'] ?? '',
      peralatanTambahan: json['peralatan_tambahan'] ?? '',
      catatanSeragam: json['catatan_seragam'] ?? '',
      image: json['image'] ?? '',
    );
  }

  /// Object → JSON (opsional)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_kategori': idKategori,
      'judul': judul,
      'peralatan_wajib': peralatanWajib,
      'peralatan_tambahan': peralatanTambahan,
      'catatan_seragam': catatanSeragam,
      'image': image,
    };
  }
}