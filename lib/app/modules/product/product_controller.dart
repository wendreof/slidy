import 'package:consultoria/app/modules/product/models/post_model.dart';
import 'package:consultoria/app/modules/product/repositories/product_repository.dart';
import 'package:mobx/mobx.dart';

part 'product_controller.g.dart';

class ProductController = _ProductControllerBase with _$ProductController;

abstract class _ProductControllerBase with Store {
  final ProductRepository _repository;
  _ProductControllerBase(this._repository) {
    refresh();
  }

  @observable
  List<PostModel> posts;

  @action
  Future<void> refresh() async {
    posts = await _repository.getAllPosts();
  }
}
