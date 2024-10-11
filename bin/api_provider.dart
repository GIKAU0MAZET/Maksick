import 'package:dio/dio.dart';
import 'product_model.dart';

abstract class ApiPaths{
  static const products = 'products';
}

class ApiProvider {
  final client = Dio(BaseOptions(baseUrl: "https://dummyjson.com/"));

  Future<List<ProductModel>> getProductList() async {
    final response = await client.get(ApiPaths.products);
    final jsonList = response.data["products"] as List<dynamic>;
    final productList = jsonList.map((el) => ProductModel.fromMap(el)).toList();
    return productList;
  }
}