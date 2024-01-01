import 'package:get/get.dart';
import 'package:untitled/getX/services/provider.dart';
import 'package:untitled/getX/services/repository.dart';

import 'controllers/store_controller.dart';

class StoreBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => StoreController(
        repository: ReviewRepository(storeProvider: StoreProvider())));

    //Get.put(StoreController(repository: ReviewRepository(storeProvider: StoreProvider())));
  }
}
