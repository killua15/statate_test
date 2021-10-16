import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:statate_test/pages/page1.dart';
import 'package:statate_test/pages/page2.dart';
import 'package:statate_test/services/user_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => new UserService())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'page1',
        routes: {
          'page1': (_) => Page1(),
          'page2': (_) => Page2(),
        },
      ),
    );
  }
}
