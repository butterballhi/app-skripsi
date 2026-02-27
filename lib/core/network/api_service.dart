import 'dart:convert';
import 'package:http/http.dart' as http;

import '../config/api_config.dart';

// MODELS
import '../../features/teknik/models/kuda_kuda_model.dart';
import '../../features/teknik/models/tendangan_model.dart';
import '../../features/teknik/models/tangkisan_model.dart';
import '../../features/teknik/models/pukulan_model.dart';

import '../../features/poomsae/models/poomsae_model.dart';

import '../../features/kyorugi/models/kelas_berat_model.dart';
import '../../features/kyorugi/models/kyorugi_info_model.dart';
import '../../features/kyorugi/models/kyorugi_peralatan_model.dart';
import '../../features/kyorugi/models/open_kyorugi_info_model.dart';

class ApiService {
  final http.Client _client = http.Client();

  // =============================
  // GENERIC GET LIST FUNCTION
  // =============================
  Future<List<T>> _getList<T>(
    String endpoint,
    T Function(Map<String, dynamic>) fromJson,
  ) async {
    final url = Uri.parse('${ApiConfig.baseUrl}$endpoint');

    final response = await _client.get(url);

    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body);

      final List data = jsonResponse['data'];

      return data.map((e) => fromJson(e)).toList();
    } else {
      throw Exception('Gagal memuat data ($endpoint)');
    }
  }

  // =============================
  // TEKNIK
  // =============================
  Future<List<KudaKudaModel>> getKudaKuda() {
    return _getList(
      '/kuda-kuda',
      (json) => KudaKudaModel.fromJson(json),
    );
  }

  Future<List<TendanganModel>> getTendangan() {
    return _getList(
      '/tendangan',
      (json) => TendanganModel.fromJson(json),
    );
  }

  Future<List<TangkisanModel>> getTangkisan() {
    return _getList(
      '/tangkisan',
      (json) => TangkisanModel.fromJson(json),
    );
  }

  Future<List<PukulanModel>> getPukulan() {
    return _getList(
      '/pukulan',
      (json) => PukulanModel.fromJson(json),
    );
  }

  // =============================
  // POOMSAE
  // =============================
  Future<List<PoomsaeModel>> getPoomsae() {
    return _getList(
      '/poomsae',
      (json) => PoomsaeModel.fromJson(json),
    );
  }

  // =============================
  // KYORUGI
  // =============================
  Future<List<KelasBeratModel>> getKelasBerat() {
    return _getList(
      '/kelas-berat',
      (json) => KelasBeratModel.fromJson(json),
    );
  }

  Future<List<KyorugiInfoModel>> getKyorugiInfo() {
    return _getList(
      '/kyorugi-info',
      (json) => KyorugiInfoModel.fromJson(json),
    );
  }

  Future<List<KyorugiPeralatanModel>> getKyorugiPeralatan() {
    return _getList(
      '/kyorugi-peralatan',
      (json) => KyorugiPeralatanModel.fromJson(json),
    );
  }

  Future<List<OpenKyorugiInfoModel>> getOpenKyorugiInfo() {
    return _getList(
      '/open-kyorugi-info',
      (json) => OpenKyorugiInfoModel.fromJson(json),
    );
  }
}