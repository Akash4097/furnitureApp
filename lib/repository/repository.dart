import 'package:furniture_app/model/category.dart';
import 'package:furniture_app/model/product.dart';

abstract class FurnitureRepository {
  Future<List<Product>> getProducts();
  Future<List<Category>> getCategory();
}
