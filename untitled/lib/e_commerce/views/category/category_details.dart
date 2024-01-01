import 'package:get/get.dart';
import 'package:untitled/e_commerce/widgets/bg_widget.dart';

import '../../consts/consts.dart';
import '../../consts/list.dart';
import 'item_details.dart';

class CategoryDetails extends StatelessWidget {
  final String? title;

  CategoryDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: title!.text.white.make(),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(
                        6,
                        (index) => "Baby Cloth "
                            .text
                            .size(12)
                            .make()
                            .box
                            .white
                            .size(150, 40)
                            .rounded
                            .alignCenter
                            .margin(const EdgeInsets.all(8))
                            .make()))),
            Expanded(
                child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 9,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 200),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Image.asset(
                            categoryImagesList[index],
                            height: 150,
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
                          .make()
                          .onTap(() {
                        Get.to(() => const ItemDetails(title: 'Dummy Item'));
                      });
                    }))
          ],
        ),
      ),
    ));
  }
}
