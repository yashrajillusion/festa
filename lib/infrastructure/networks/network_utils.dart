import 'package:dio/dio.dart';

class NetworkUtility {
  static final dio = Dio();

  static Future<Map<String, dynamic>?> fetchUrl(String uri) async {
    try {
      final response = await dio.get(uri);
      if (response.statusCode == 200) {
        return response.data;
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
