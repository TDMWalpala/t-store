import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/common/widgets/loaders/animation_loader.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        barrierDismissible: false,
        builder: (_) => WillPopScope(
            child: Container(
              color: THelperFunctions.isDarkMode(Get.context!)
                  ? TColors.black
                  : TColors.white,
              width: double.infinity,
              height: double.infinity,
              child: Column(
                children: [
                  const SizedBox(
                    height: 250,
                  ),
                  TAnimationLoaderWidget(text: text, animation: animation,),
                ],
              ),
            ),
            onWillPop: () async {
              return false;
            }));
  }

  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop();
  }
}
