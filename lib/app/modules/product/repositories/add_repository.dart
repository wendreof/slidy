import 'package:consultoria/app/modules/product/models/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/native_imp.dart';

class AddRepository extends Disposable {
  final Dio client;

  AddRepository(this.client);

  Future getAllPosts() async {
    final response =
        await client.get('https://jsonplaceholder.typicode.com/posts');
    return PostModel.fromJsonList(response.data);
  }

  //dispose will be called automatically
  @override
  void dispose() {}
}
