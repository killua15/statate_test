import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:statate_test/pages/page1.dart';
import 'package:statate_test/pages/page2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: '/page1',
      // routes: {
      //   'page1': (_) => Page1(),
      //   'page2': (_) => Page2(),
      // },
      getPages: [
        GetPage(name: '/page1', page: () => Page1()),
        GetPage(name: '/page2', page: () => Page2()),
      ],
    );
  }
}
