class KyorugiInfoModel {
  final int id;
  final int idKategori;
  final String judul;
  final String sistemPertandingan;
  final String sistemPoinTeknik;
  final String areaSerang;
  final String pelanggaranSanksi;
  final String aturanClinch;
  final String penentuanPemenang;

  KyorugiInfoModel({
    required this.id,
    required this.idKategori,
    required this.judul,
    required this.sistemPertandingan,
    required this.sistemPoinTeknik,
    required this.areaSerang,
    required this.pelanggaranSanksi,
    required this.aturanClinch,
    required this.penentuanPemenang,
  });

  /// JSON → Object
  factory KyorugiInfoModel.fromJson(Map<String, dynamic> json) {
    return KyorugiInfoModel(
      id: json['id'],
      idKategori: json['id_kategori'],
      judul: json['judul'] ?? '',
      sistemPertandingan: json['sistem_pertandingan'] ?? '',
      sistemPoinTeknik: json['sistem_poin_teknik'] ?? '',
      areaSerang: json['area_serang'] ?? '',
      pelanggaranSanksi: json['pelanggaran_sanksi'] ?? '',
      aturanClinch: json['aturan_clinch'] ?? '',
      penentuanPemenang: json['penentuan_pemenang'] ?? '',
    );
  }

  /// Object → JSON (optional, future-proof)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_kategori': idKategori,
      'judul': judul,
      'sistem_pertandingan': sistemPertandingan,
      'sistem_poin_teknik': sistemPoinTeknik,
      'area_serang': areaSerang,
      'pelanggaran_sanksi': pelanggaranSanksi,
      'aturan_clinch': aturanClinch,
      'penentuan_pemenang': penentuanPemenang,
    };
  }
}