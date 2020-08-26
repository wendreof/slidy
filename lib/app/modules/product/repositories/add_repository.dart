import 'package:consultoria/app/modules/product/models/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/native_imp.dart';

class AddRepository extends Disposable {
  final Dio client;

  AddRepository(this.client);

  //dispose will be called automatically
  @override
  void dispose() {}
}
