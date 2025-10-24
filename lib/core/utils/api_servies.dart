import 'package:dio/dio.dart';

class ApiServies {
  final Dio dio = Dio();

  Future<Response> post({
    required Map<String, dynamic> body,
    required String url,
    required String token,
    Map<String, dynamic>? headers,
    String? contentTyep,
  }) async {
    try {
      final response = await dio.post(
        url,
        data: body,
        options: Options(
          contentType: contentTyep ?? Headers.formUrlEncodedContentType,
          headers: {
            'Authorization': 'Bearer $token', // ✅ ثابتة دايمًا
            'Content-Type': contentTyep ?? Headers.formUrlEncodedContentType,
            if (headers != null) ...headers, // ندمج أي headers إضافية
          },
        ),
      );
      return response;
    } on DioException catch (e) {
      print('❌ Dio Error: ${e.response?.data}');
      rethrow;
    }
  }
}
