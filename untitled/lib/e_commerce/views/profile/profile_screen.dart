
import 'package:untitled/e_commerce/consts/list.dart';
import 'package:untitled/e_commerce/widgets/bg_widget.dart';

import '../../consts/consts.dart';
import 'details_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
          body: SafeArea(
              child: Container(
                padding: EdgeInsets.all(10),
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Image
                            .asset(
                          imgProfile2,
                          width: 100,
                          fit: BoxFit.fill,
                        )
                            .box
                            .roundedFull
                            .clip(Clip.antiAlias)
                            .make(),
                        Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                "shubham".text.bold.make(),
                                "shubham".text.make(),
                              ],
                            )),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                side: const BorderSide(color: Colors.white)),
                            onPressed: () {},
                            child: "Logout".text.bold.white.make()),
                      ],
                    ),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        detailsCard(context.screenWidth, "0", "In your cart"),
                        detailsCard(
                            context.screenWidth, "22", "In Your Wishlist"),
                        detailsCard(context.screenWidth, "2", "In your Order"),
                      ],
                    ),
                    10.heightBox,
                    ListView.separated(
                      shrinkWrap: true,
                        separatorBuilder: (context,index) {
                          return const Divider(height: 8,color: lightGrey,);
                        },
                        itemCount: profileButtonList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                              title: profileButtonList[index].text.bold.make(),
                            leading: Image.asset(profileButtonIcon[index],width: 22,height: 22,),
                          );
                        }).box.white.rounded.padding(const EdgeInsets.all(10)).shadowSm.make()
                  ],
                ),
              )),
        ));
  }
}
