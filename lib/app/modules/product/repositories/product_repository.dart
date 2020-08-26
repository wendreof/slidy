import 'package:consultoria/app/modules/product/models/post_model.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/native_imp.dart';

class ProductRepository extends Disposable {
  final DioForNative client;

  ProductRepository(this.client);

  Future getAllPosts() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts');
    return PostModel.fromJsonList(response.data);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
