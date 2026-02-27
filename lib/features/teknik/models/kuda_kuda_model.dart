class KudaKuda {
  final int id;
  final int idKategori;
  final String namaEn;
  final String namaKr;
  final String hangeul;
  final String heightType;
  final String lengthDesc;
  final String widthDesc;
  final String poomsaeDesc;
  final String practicalApp;
  final String image;

  KudaKuda({
    required this.id,
    required this.idKategori,
    required this.namaEn,
    required this.namaKr,
    required this.hangeul,
    required this.heightType,
    required this.lengthDesc,
    required this.widthDesc,
    required this.poomsaeDesc,
    required this.practicalApp,
    required this.image,
  });

  /// Factory: JSON → Object
  factory KudaKuda.fromJson(Map<String, dynamic> json) {
    return KudaKuda(
      id: json['id'],
      idKategori: json['id_kategori'],
      namaEn: json['nama_en'] ?? '',
      namaKr: json['nama_kr'] ?? '',
      hangeul: json['hangeul'] ?? '',
      heightType: json['height_type'] ?? '',
      lengthDesc: json['length_desc'] ?? '',
      widthDesc: json['width_desc'] ?? '',
      poomsaeDesc: json['poomsae_desc'] ?? '',
      practicalApp: json['practical_app'] ?? '',
      image: json['image'] ?? '',
    );
  }

  /// Object → JSON (opsional, tapi bagus untuk future-proof)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_kategori': idKategori,
      'nama_en': namaEn,
      'nama_kr': namaKr,
      'hangeul': hangeul,
      'height_type': heightType,
      'length_desc': lengthDesc,
      'width_desc': widthDesc,
      'poomsae_desc': poomsaeDesc,
      'practical_app': practicalApp,
      'image': image,
    };
  }
}