import 'package:get/get.dart';

import 'image_preview_controller.dart';

class ImagePreviewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImagePreviewController>(() => ImagePreviewController());
  }
}
