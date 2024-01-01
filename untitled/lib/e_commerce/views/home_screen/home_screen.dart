import 'package:untitled/e_commerce/consts/list.dart';
import 'package:untitled/e_commerce/views/home_screen/component/features_button.dart';

import '../../consts/consts.dart';
import '../../widgets/home_button_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    print("Tag > ${context.screenWidth}");
    print("Tag > ${context.screenWidth / 2.5}");
    return Container(
      color: lightGrey,
      width: context.screenWidth,
      height: context.screenHeight,
      padding: const EdgeInsets.all(10),
      child: SafeArea(
          child: Column(
        children: [
          Container(
            height: 60,
            alignment: Alignment.center,
            color: lightGrey,
            child: TextFormField(
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: whiteColor,
                  hintText: "Search Anything",
                  hintStyle:
                      TextStyle(fontFamily: semibold, color: Colors.grey)),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  //swiper brands
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 200,
                      enlargeCenterPage: true,
                      itemCount: sliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          sliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10))
                            .make();
                      }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        2,
                        (index) => homeButton(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth / 2.3,
                            icon: index == 0 ? icTodaysDeal : icFlashDeal,
                            title: index == 0 ? "Today's Deal" : "Flash Deal")),
                  ),
                  10.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 200,
                      enlargeCenterPage: true,
                      itemCount: secondSliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondSliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10))
                            .make();
                      }),

                  10.heightBox,

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                        3,
                        (index) => homeButton(
                            height: context.screenHeight * 0.15,
                            width: context.screenWidth / 3.5,
                            icon: index == 0
                                ? icTopCategories
                                : index == 1
                                    ? icBrands
                                    : icTopSeller,
                            title: index == 0
                                ? "Category"
                                : index == 1
                                    ? "Brands"
                                    : "Top Seller")),
                  ),

                  10.heightBox,

                  Align(
                      alignment: Alignment.centerLeft,
                      child: "Feature category"
                          .text
                          .bold
                          .color(darkFontGrey)
                          .size(20)
                          .make()),
                  10.heightBox,
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: const BouncingScrollPhysics(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: List.generate(
                          featureImagesList1.length,
                          (index) => Column(
                                children: [
                                  FeatureButton(
                                      icon: featureImagesList1[index],
                                      title: featureTitleList1[index]),
                                  5.heightBox,
                                  FeatureButton(
                                      icon: featureImagesList2[index],
                                      title: featureTitleList2[index])
                                ],
                              )),
                    ),
                  ),

                  20.heightBox,

                  Container(
                    padding: EdgeInsets.all(10),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: redColor,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        "Feature Product"
                            .text
                            .white
                            .fontFamily(bold)
                            .size(18)
                            .make(),
                        10.heightBox,
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: List.generate(
                                6,
                                (index) => Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          imgP1,
                                          width: 150,
                                          fit: BoxFit.fill,
                                        ),
                                        5.heightBox,
                                        "Laptop".text.bold.size(20).make(),
                                        5.heightBox,
                                        "\$23,45".text.bold.size(20).make(),
                                      ],
                                    )
                                        .box
                                        .roundedSM
                                        .white
                                        .margin(const EdgeInsets.all(5))
                                        .padding(const EdgeInsets.all(10))
                                        .make()),
                          ),
                        )
                      ],
                    ),
                  ),

                  20.heightBox,
                  VxSwiper.builder(
                      aspectRatio: 16 / 9,
                      autoPlay: true,
                      height: 200,
                      itemCount: secondSliderList.length,
                      itemBuilder: (context, index) {
                        return Image.asset(
                          secondSliderList[index],
                          fit: BoxFit.fill,
                        )
                            .box
                            .rounded
                            .clip(Clip.antiAlias)
                            .margin(const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 10))
                            .make();
                      }),

                  //all product section
                  20.heightBox,
                  GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,mainAxisExtent: 220),
                      itemBuilder: (context, index) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Image.asset(
                                imgP5,
                                width: 130,
                                fit: BoxFit.cover,
                              ),
                            ),
                            5.heightBox,
                            "Laptop".text.fontFamily(semibold).size(18).make(),
                            5.heightBox,
                            "600".text.color(redColor).fontFamily(semibold).size(18).make(),
                            5.heightBox,
                          ],
                        )
                            .box
                            .white
                            .margin(const EdgeInsets.symmetric(horizontal: 8))
                            .rounded
                            .padding(const EdgeInsets.all(8))
                            .make();
                      }),
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
