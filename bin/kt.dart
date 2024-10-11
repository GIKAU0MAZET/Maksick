// среднюю стоимость товара
// фильтр: товары ĸатегории "fragrances" (параметр category)

import 'api_provider.dart';
void main(List<String> arguments) async {
  final apiProvider = ApiProvider();
  final productList = await apiProvider.getProductList();
  
  int counter = 0;
  double average = 0; 

  for(var product in productList){
    if(product.category == "fragrances"){
      counter ++;
      average += product.price;
    }
  }
  average /= counter;

  print("Кол-во после фильтрации: $counter");
  print("Средняя цена товаров = $average");
  print("Средняя цена   = $average");
}

