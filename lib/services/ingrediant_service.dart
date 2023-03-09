import 'package:dio/dio.dart';
import '../models/ingredient.dart';

class IngredientService {
  final Dio _dio = Dio();

  final _baseUrl = 'http://127.0.0.1:8000';

  Future<List<Ingredient>> getIngredient() async {
    List<Ingredient> ingredients = [];
    Response response = await _dio.get(_baseUrl + '/api/ingrediants/');
    ingredients = (response.data as List)
        .map((ingredient) => Ingredient.fromJson(ingredient))
        .toList();
    return ingredients;
  }

  Future<Ingredient> createIngredient({required Ingredient ingredient}) async {
    late Ingredient retrievedIngredient;
    try {
      FormData data = FormData.fromMap({
        "user_ingredient": ingredient.user_ingredient,
        "user": ingredient.user,
      });

      Response response =
          await _dio.post(_baseUrl + '/ingrediants/', data: data);
      retrievedIngredient = Ingredient.fromJson(response.data);
    } on DioError catch (error) {
      print(error);
    }
    return retrievedIngredient;
  }
}
