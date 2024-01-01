import 'package:untitled/e_commerce/consts/consts.dart';

Widget detailsCard(width, String? count, String? title) => Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      "0".text.black.size(16).bold.make(),
      5.heightBox,
      "In your cart".text.black.make(),
    ],
  ).box.white.rounded.width(width / 3.4).padding(const EdgeInsets.all(10)).make();
