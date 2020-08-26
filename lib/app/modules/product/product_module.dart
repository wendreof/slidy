import 'repositories/add_repository.dart';
import 'package:consultoria/app/modules/product/add_product/add_product_module.dart';

import 'add_product/add_product_page.dart';
import 'product_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'product_page.dart';

class ProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AddRepository(i())),
        Bind((i) => ProductController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => ProductPage()),
        ModularRouter("/addProduct", module: AddProductModule()),
      ];

  static Inject get to => Inject<ProductModule>.of();
}
