import 'package:dio/dio.dart';
import 'package:consultoria/app/app_widget.dart';
import 'package:consultoria/app/modules/home/home_module.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';
import 'modules/product/product_module.dart';
import 'modules/splash/splash_module.dart';
import 'modules/tasks/tasks_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind<Dio>((i) => DioForNative()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: SplashModule()),
        ModularRouter("/home", module: HomeModule()),
        ModularRouter("/product", module: ProductModule()),
        ModularRouter("/tasks", module: TasksModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
