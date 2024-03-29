import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

import 'package:get/get.dart';
import 'package:gredu_common/gredu_common.dart';

import '../../../core/resource/color.dart';
import 'notification_controller.dart';

class NotificationBuyerView extends GetView<NotificationBuyerController> {
  const NotificationBuyerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: 'Notifikasi'.text.color(colorBlack).bold.make(),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const Icon(
            Icons.arrow_back,
            color: colorBlack,
          ).onTap(() => Get.back())),
      body: HStack(
        [
          'Aktifkan notifikasi'.text.make(),
          Obx(
            () => FlutterSwitch(
              height: 20.0,
              width: 36.0,
              padding: 2.0,
              toggleSize: 16.0,
              borderRadius: 12.0,
              activeColor: colorPrimary,
              inactiveColor: colorNeutral.shade100,
              value: controller.isActivateNotification.value,
              onToggle: (currentVal) => controller.isActivateNotification.value = currentVal,
            ),
          )
        ],
        alignment: MainAxisAlignment.start,
        crossAlignment: CrossAxisAlignment.start,
      ),
    );
  }
}
