import 'package:dio/dio.dart';

import '../models/reciepe.dart';

class ReciepeServices {
  final Dio _dio = Dio();

  final _baseUrl = 'http://127.0.0.1:8000';

  Future<List<Reciepe>> getReciepe() async {
    List<Reciepe> reciepe = [];
    Response response = await _dio.get(_baseUrl + '/api/reciepe/');
    final data = response.data as List;
    reciepe = data.map((reciepe) => Reciepe.fromJson(reciepe)).toList();
    return reciepe;
  }

  Future<Reciepe> createReciepe({required Reciepe reciepe}) async {
    late Reciepe retrievedReciepe;
    try {
      FormData data = FormData.fromMap({
        "title": reciepe.title,
        "user": reciepe.user,
        "image": reciepe.image,
        "description": reciepe.description,
        "steps": reciepe.steps,
      });

      Response response =
          await _dio.post(_baseUrl + '/api/reciepe', data: data);
      retrievedReciepe = Reciepe.fromJson(response.data);
    } on DioError catch (error) {
      print(error);
    }
    return retrievedReciepe;
  }
}
