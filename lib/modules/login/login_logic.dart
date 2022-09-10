import 'package:get/get.dart';

class LoginLogic extends GetxController {
   var x = 0;


   var y = 0.obs;

  //GetBuilder --> update()
  //GetX --> no use
  //ObX


  void firstFunc(){
    x = 5;
    update();

    // setState((){
    //   x = 10;
    // });
  }

  numberIncrement(){ //Business Logic
    x++;
    update();
  }

   numberIncrementForY(){ //Business Logic
     y++;
   }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
