import 'package:get/get.dart';
import 'package:untitled/e_commerce/consts/list.dart';
import 'package:untitled/e_commerce/views/auth_screen/signup_screen.dart';
import 'package:untitled/e_commerce/widgets/applogo_widget.dart';
import 'package:untitled/e_commerce/widgets/bg_widget.dart';
import 'package:untitled/e_commerce/widgets/button.dart';

import '../../consts/consts.dart';
import '../../widgets/custom_textfield.dart';
import '../home_screen/home.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            appLogoWidget(),
            10.heightBox,
            'Log into $appname'.text.fontFamily(bold).size(18).white.make(),
            10.heightBox,
            Column(
              children: [
                customTextField(title: email, hint: emailHint),
                10.heightBox,
                customTextField(title: pass, hint: passHint),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgotPass.text.bold.make(),
                  ),
                ),
                5.heightBox,
                ourButton(
                        color: redColor,
                        textColor: whiteColor,
                        title: login,
                        onPress: () {
                          Get.to(() => const Home());
                        })
                    .box
                    .rounded
                    .width(context.screenWidth - 50)
                    .make(),
                5.heightBox,
                createNewAcc.text.bold.color(fontGrey).make(),
                5.heightBox,
                ourButton(
                    color: lightGrey,
                    textColor: redColor,
                    title: signup,
                    onPress: () {
                      Get.to(() => const SignUpScreen());
                    }).box.rounded.width(context.screenWidth - 50).make(),
                5.heightBox,
                loginWith.text.color(fontGrey).make(),
                10.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        3,
                        (index) => Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                radius: 25,
                                backgroundColor: lightGrey,
                                child: Image.asset(
                                  socialIconList[index],
                                  width: 30,
                                ),
                              ),
                            )))
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make(),
          ],
        ),
      ),
    ));
  }
}
