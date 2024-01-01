import 'package:untitled/e_commerce/consts/consts.dart';

Widget homeButton(
    {double? height, double? width, String? title, String? icon}) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        icon!,
        width: 26,
      ),
      10.heightBox,
      title!.text.fontFamily(semibold).color(darkFontGrey).make()
    ],
  ).box.rounded.size(width!,height!).white.shadow2xl.make();
}
