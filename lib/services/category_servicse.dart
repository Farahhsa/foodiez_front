import 'package:dio/dio.dart';

import '../models/category.dart';

class CategoryServices {
  final Dio _dio = Dio();

  final _baseUrl = 'http://127.0.0.1:8000';

  Future<List<Category>> getCategory() async {
    List<Category> category = [];
    Response response = await _dio.get(_baseUrl + '/api/category/');
    category = (response.data as List)
        .map((category) => Category.fromJson(category))
        .toList();
    return category;
  }

  Future<Category> createCategory({required Category category}) async {
    late Category retrievedCategory;
    try {
      FormData data = FormData.fromMap({
        "title": category.title,
        "user": category.user,
      });

      Response response = await _dio.post(_baseUrl + '/category', data: data);
      retrievedCategory = Category.fromJson(response.data);
    } on DioError catch (error) {
      print(error);
    }
    return retrievedCategory;
  }
}
