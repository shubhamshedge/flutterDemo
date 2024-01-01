import 'package:get/get.dart';
import 'package:untitled/e_commerce/consts/list.dart';
import 'package:untitled/e_commerce/views/category/category_details.dart';
import 'package:untitled/e_commerce/widgets/bg_widget.dart';

import '../../consts/consts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: "Category".text.bold.white.make(),
      ),
      body: Container(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 9,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 10,
                crossAxisSpacing: 2,
                mainAxisExtent: 180),
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Image.asset(
                    categoryImagesList[index],
                    height: 120,
                    width: 200,
                    fit: BoxFit.cover,
                  ),
                  5.heightBox,
                  categoryList[index]
                      .text
                      .fontFamily(semibold)
                      .align(TextAlign.center)
                      .size(14)
                      .make(),
                  5.heightBox,
                ],
              )
                  .box
                  .white
                  .margin(const EdgeInsets.symmetric(horizontal: 8))
                  .rounded
                  .padding(const EdgeInsets.all(8))
                  .make().onTap(() {
                    Get.to(()=> CategoryDetails(title: categoryList[index]));
              });
            }),
      ),
    ));
  }
}
