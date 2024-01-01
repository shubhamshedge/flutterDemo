import 'package:flutter/cupertino.dart';
import 'package:untitled/e_commerce/consts/consts.dart';

Widget FeatureButton({String? title, icon}) {
  return Row(
    children: [
      Image.asset(
        icon,
        width: 60,
        fit: BoxFit.fill,
      ),
      10.widthBox,
      title!.text.bold.make()
    ],
  )
      .box
      .roundedSM
      .width(200)
      .margin(const EdgeInsets.symmetric(horizontal: 10))
      .padding(const EdgeInsets.all(4))
      .outerShadow
      .white
      .make();
}
