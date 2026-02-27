class PukulanModel {
  final int id;
  final int idKategori;
  final String namaEn;
  final String namaKr;
  final String hangeul;
  final String description;
  final String practicalApp;
  final String image;

  PukulanModel({
    required this.id,
    required this.idKategori,
    required this.namaEn,
    required this.namaKr,
    required this.hangeul,
    required this.description,
    required this.practicalApp,
    required this.image,
  });

  /// JSON → Object
  factory PukulanModel.fromJson(Map<String, dynamic> json) {
    return PukulanModel(
      id: json['id'],
      idKategori: json['id_kategori'],
      namaEn: json['nama_en'] ?? '',
      namaKr: json['nama_kr'] ?? '',
      hangeul: json['hangeul'] ?? '',
      description: json['description'] ?? '',
      practicalApp: json['practical_app'] ?? '',
      image: json['image'] ?? '',
    );
  }

  /// Object → JSON (future-ready)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_kategori': idKategori,
      'nama_en': namaEn,
      'nama_kr': namaKr,
      'hangeul': hangeul,
      'description': description,
      'practical_app': practicalApp,
      'image': image,
    };
  }
}