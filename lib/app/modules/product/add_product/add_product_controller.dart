import 'package:consultoria/app/modules/product/repositories/add_repository.dart';
import 'package:mobx/mobx.dart';

part 'add_product_controller.g.dart';

class AddProductController = _AddProductControllerBase
    with _$AddProductController;

abstract class _AddProductControllerBase with Store {
  final AddRepository addRepository;
  _AddProductControllerBase(this.addRepository);

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
