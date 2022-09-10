import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_test_project/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter GETX Demo',
      enableLog: true,
      initialRoute: AppRoutes.INITIAL,
      getPages: AppRoutes.routes,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}