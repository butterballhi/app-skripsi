class KelasBerat {
  final int id;
  final int idKategori;
  final String judul;
  final String definisiUmum;
  final String spesifikasiHogu;
  final String hitLevelPss;
  final String image;

  KelasBerat({
    required this.id,
    required this.idKategori,
    required this.judul,
    required this.definisiUmum,
    required this.spesifikasiHogu,
    required this.hitLevelPss,
    required this.image,
  });

  /// JSON → Object
  factory KelasBerat.fromJson(Map<String, dynamic> json) {
    return KelasBerat(
      id: json['id'],
      idKategori: json['id_kategori'],
      judul: json['judul'] ?? '',
      definisiUmum: json['definisi_umum'] ?? '',
      spesifikasiHogu: json['spesifikasi_hogu'] ?? '',
      hitLevelPss: json['hit_level_pss'] ?? '',
      image: json['image'] ?? '',
    );
  }

  /// Object → JSON (future-ready)
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'id_kategori': idKategori,
      'judul': judul,
      'definisi_umum': definisiUmum,
      'spesifikasi_hogu': spesifikasiHogu,
      'hit_level_pss': hitLevelPss,
      'image': image,
    };
  }
}