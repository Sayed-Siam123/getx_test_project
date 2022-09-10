import 'package:get/get.dart';
import 'package:getx_test_project/modules/login/login_binding.dart';
import 'package:getx_test_project/modules/login/login_view.dart';
import 'package:getx_test_project/routes/app_pages.dart';

class AppRoutes{

  static const INITIAL = AppPages.LOGIN;

  static final routes = [

    GetPage(
      name: AppPages.LOGIN,
      page: () => LoginPage(),
      bindings: [
        LoginBinding(),
      ],
    ),

  ];
}