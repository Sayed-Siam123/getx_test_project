import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/modules/login/login_logic.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPageMobilePortrait extends GetView<LoginLogic> {
  final SizingInformation? sizingInformation;

  const LoginPageMobilePortrait({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.find<LoginLogic>();

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("This data will get changed"),
          SizedBox(
            height: 20,
          ),


          Center(
              child: GetBuilder<LoginLogic>(
                  init: LoginLogic(),
                  builder: (logic) {
                    return Text(controller.x.toString());
                  })),

          SizedBox(
            height: 20,
          ),

          Center(
              child: Obx(() {
                return Text(controller.y.toString());
              })
          ),

          SizedBox(
            height: 30,
          ),

          ElevatedButton(
            onPressed: () {
              controller.numberIncrement();
            },
            child: Text("TAP ME FOR X"),
          ),

          SizedBox(
            height: 30,
          ),

          ElevatedButton(
            onPressed: () {
              controller.numberIncrementForY();
            },
            child: Text("TAP ME FOR Y"),
          ),
        ],
      ),
    );
  }
}

class LoginPageMobileLandscape extends StatelessWidget {
  final SizingInformation? sizingInformation;

  const LoginPageMobileLandscape({Key? key, this.sizingInformation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
