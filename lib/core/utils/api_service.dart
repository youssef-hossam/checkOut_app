import 'package:dio/dio.dart';

class ApiServices {
  Dio dio = Dio();
  Future<Response> post(
      {required body,
      required String url,
      required String token,
      required String contentType,
      Map<String, dynamic>? headers}) async {
    Response response = await dio.post(url,
        data: body,
        options: Options(
            contentType: contentType,
            headers: headers ?? {'Authorization': 'Bearer $token'}));
    return response;
  }
}
