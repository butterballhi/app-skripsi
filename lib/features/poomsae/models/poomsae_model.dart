class Poomsae {
  final int id;
  final int idKategori;
  final String namaEn;
  final String namaKr;
  final String hangeul;
  final String geupLevel;
  final String philosophy;
  final String technicalSummary;
  final String stancesList;
  final String defensiveList;
  final String offensiveList;
  final String kihapInfo;
  final String image;
  final String videoUrl;
  final String chartImage;

  Poomsae({
    required this.id,
    required this.idKategori,
    required this.namaEn,
    required this.namaKr,
    required this.hangeul,
    required this.geupLevel,
    required this.philosophy,
    required this.technicalSummary,
    required this.stancesList,
    required this.defensiveList,
    required this.offensiveList,
    required this.kihapInfo,
    required this.image,
    required this.videoUrl,
    required this.chartImage,
  });

  /// JSON → Object
  factory Poomsae.fromJson(Map<String, dynamic> json) {
    return Poomsae(
      id: json['id'],
      idKategori: json['id_kategori'],
      namaEn: json['nama_en'] ?? '',
      namaKr: json['nama_kr'] ?? '',
      hangeul: json['hangeul'] ?? '',
      geupLevel: json['geup_level'] ?? '',
      philosophy: json['philosophy'] ?? '',
      technicalSummary: json['technical_summary'] ?? '',
      stancesList: json['stances_list'] ?? '',
      defensiveList: json['defensive_list'] ?? '',
      offensiveList: json['offensive_list'] ?? '',
      kihapInfo: json['kihap_info'] ?? '',
      image: json['image'] ?? '',
      videoUrl: json['video_url'] ?? '',
      chartImage: json['chart_image'] ?? '',
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
      'geup_level': geupLevel,
      'philosophy': philosophy,
      'technical_summary': technicalSummary,
      'stances_list': stancesList,
      'defensive_list': defensiveList,
      'offensive_list': offensiveList,
      'kihap_info': kihapInfo,
      'image': image,
      'video_url': videoUrl,
      'chart_image': chartImage,
    };
  }
}