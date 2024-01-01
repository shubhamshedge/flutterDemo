import 'package:untitled/e_commerce/widgets/button.dart';

import '../../consts/consts.dart';
import '../../consts/list.dart';

class ItemDetails extends StatelessWidget {
  final String? title;

  const ItemDetails({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    print("Tag > ${title!.text}");
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        title: title!.text.black.make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.favorite_outline),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                  10.heightBox,
                  title!.text.bold.size(16).color(darkFontGrey).make(),
                  10.heightBox,
                  VxRating(
                    onRatingUpdate: (value) {},
                    normalColor: textfieldGrey,
                    selectionColor: golden,
                    count: 5,
                    size: 25,
                    stepInt: true,
                  ),
                  10.heightBox,
                  "\$30,000".text.make(),
                  10.heightBox,
                  Row(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          "Seller".text.black.make(),
                          5.heightBox,
                          "In House Brand".text.black.make(),
                        ],
                      )),
                      const Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.message_rounded),
                          )
                        ],
                      )
                    ],
                  ).box.color(lightGrey).make(),
                  10.heightBox,
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Color ".text.bold.make(),
                          ),
                          Row(
                            children: List.generate(
                                3,
                                (index) => VxBox()
                                    .size(40, 40)
                                    .roundedFull
                                    .color(Vx.randomPrimaryColor)
                                    .margin(const EdgeInsets.symmetric(
                                        horizontal: 5))
                                    .make()),
                          )
                        ],
                      ),
                      //Quantity
                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Quantity ".text.bold.make(),
                          ),
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.remove)),
                              "0".text.color(Colors.black).make(),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add)),
                              10.heightBox,
                              "( 0 Available ) "
                                  .text
                                  .color(Colors.black)
                                  .make(),
                            ],
                          )
                        ],
                      ),

                      Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: "Total ".text.bold.make(),
                          ),
                          "\$0.00".text.color(redColor).size(14).bold.make(),
                        ],
                      ).box.color(Colors.white).padding(EdgeInsets.all(8)).make(),
                    ],
                  )
                      .box
                      .padding(EdgeInsets.all(5))
                      .color(lightGrey)
                      .shadowSm
                      .make(),
                  10.heightBox,
                  //Description
                  "Description".text.color(darkFontGrey).make(),
                  10.heightBox,
                  "Its dummy Item and dummy Description.."
                      .text
                      .color(darkFontGrey)
                      .make(),

                  ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: List.generate(
                        itemDetailsButtonList.length,
                        (index) => ListTile(
                              title: itemDetailsButtonList[index]
                                  .text
                                  .bold
                                  .color(darkFontGrey)
                                  .make(),
                              trailing: const Icon(Icons.arrow_forward),
                            )),
                  ),

                  10.heightBox,
                  "Product you may also know".text.bold.make(),
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
          )),
          SizedBox(
            width: double.infinity,
            child: ourButton(
                color: redColor,
                onPress: () {},
                textColor: whiteColor,
                title: "Add to Cart"),
          )
        ],
      ),
    );
  }
}
