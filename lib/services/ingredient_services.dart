import 'package:dio/dio.dart';
import '../models/ingredient.dart';

class IngredientServices {
  final Dio _dio = Dio();

  final _baseUrl = 'http://127.0.0.1:8000';

  Future<List<Ingredient>> getIngredient() async {
    List<Ingredient> ingredient = [];
    Response response = await _dio.get(_baseUrl + '/api/ingredient/');
    ingredient = (response.data as List)
        .map((ingredient) => ingredient.fromJson(ingredient))
        .toList();
    return ingredient;
  }

  Future<Ingredient> createIngredient({required Ingredient ingredient}) async {
    late Ingredient retrievedIngredient;
    try {
      FormData data = FormData.fromMap({
        "user_ingredient": ingredient.user_ingredient,
        "user": ingredient.user,
      });

      Response response =
          await _dio.post(_baseUrl + '/api/ingredient', data: data);
      retrievedIngredient = Ingredient.fromJson(response.data);
    } on DioError catch (error) {
      print(error);
    }
    return retrievedIngredient;
  }
}
