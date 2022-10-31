import 'package:get/get.dart';

import '../controllers/dashboard_2_controller.dart';

class Dashboard2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dashboard2Controller>(
      () => Dashboard2Controller(),
    );
  }
}
