import 'package:get/route_manager.dart';
import 'package:untitled/e_commerce/views/home_screen/home.dart';

import '../../consts/consts.dart';
import '../../consts/list.dart';
import '../../widgets/applogo_widget.dart';
import '../../widgets/bg_widget.dart';
import '../../widgets/button.dart';
import '../../widgets/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;

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
            'Join the $appname'.text.fontFamily(bold).size(18).white.make(),
            10.heightBox,
            Column(
              children: [
                customTextField(title: name, hint: hintName),
                10.heightBox,
                customTextField(title: email, hint: emailHint),
                10.heightBox,
                customTextField(title: pass, hint: passHint),
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
                createNewAcc.text.bold.color(fontGrey).make(),
                5.heightBox,
                Row(
                  children: [
                    Checkbox(
                      activeColor: redColor,
                      checkColor: whiteColor,
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                    ),
                    10.heightBox,
                    Expanded(
                      child: RichText(
                          text: const TextSpan(children: [
                        TextSpan(
                            text: "I agree to ",
                            style: TextStyle(
                                fontFamily: bold, color: Colors.black)),
                        TextSpan(
                            text: termCond,
                            style:
                                TextStyle(fontFamily: bold, color: redColor)),
                        TextSpan(
                            text: " & ",
                            style: TextStyle(
                                fontFamily: bold, color: Colors.black)),
                        TextSpan(
                            text: privacyPolicy,
                            style:
                                TextStyle(fontFamily: bold, color: redColor)),
                      ])),
                    )
                  ],
                ),
                ourButton(
                    color: isChecked ? redColor : lightGrey,
                    textColor: whiteColor,
                    title: signup,
                    onPress: () {
                        Get.to(() => const Home());
                    }).box.rounded.width(context.screenWidth - 50).make(),
                10.heightBox,
                RichText(
                    text: const TextSpan(children: [
                  TextSpan(
                      text: alreadyAcc,
                      style: TextStyle(fontFamily: bold, color: Colors.black)),
                  TextSpan(
                      text: " login in ",
                      style: TextStyle(fontFamily: bold, color: redColor)),
                ])).onTap(() {
                  Get.back();
                })
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
