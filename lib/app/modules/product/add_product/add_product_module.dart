import 'add_product_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'add_product_page.dart';

class AddProductModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AddProductController(i())),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter("/:id",
            child: (_, args) => AddProductPage(
                  id: int.parse(args.params["id"]),
                  id2: args.data,
                )),
      ];

  static Inject get to => Inject<AddProductModule>.of();
}
