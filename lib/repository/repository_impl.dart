import 'dart:convert';

import '../model/product.dart';
import '../model/category.dart';
import 'repository.dart';
import 'package:http/http.dart' as http;

class FurnitureRepositoryImpl implements FurnitureRepository {
  @override
  Future<List<Category>> getCategory() async {
    const String url =
        "https://5f210aa9daa42f001666535e.mockapi.io/api/categories";
    final categories = <Category>[];
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final apiResponse = json.decode(response.body) as List;
      for (var i = 0; i < apiResponse.length; i++) {
        categories.add(Category.fromJson(apiResponse[i]));
      }
    } else {
      throw Exception("Data is failed to load successfully!");
    }
    return categories;
  }

  @override
  Future<List<Product>> getProducts() async {
    const String url =
        "https://5f210aa9daa42f001666535e.mockapi.io/api/products";
    final products = <Product>[];
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final apiResponse = json.decode(response.body) as List;
      for (var i = 0; i < apiResponse.length; i++) {
        products.add(Product.fromJson(apiResponse[i]));
      }
    } else {
      throw Exception("Data is failed to load successfully!");
    }
    return products;
  }
}
