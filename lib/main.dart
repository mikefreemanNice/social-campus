import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:social_campus/router/application.dart';
import 'package:social_campus/router/router_conf.dart';
import 'package:social_campus/views/page/main_page.dart';

void main() => runApp(MyApp());

const Color ThemeColor = Colors.lightBlue;

class MyApp extends StatelessWidget {
  MyApp() {
    final router = new Router();

    RouterConf.configureRouters(router);

    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Campus',
      theme: new ThemeData(
        primaryColor: ThemeColor,
        backgroundColor: Color(0xFFEFEFEF),
        accentColor: Color(0xFF888888),
        textTheme: TextTheme(
          //设置Material的默认字体样式
          body1: TextStyle(color: Color(0xFF888888), fontSize: 16.0),
        ),
        iconTheme: IconThemeData(
          color: ThemeColor,
          size: 40.0,
        ),
      ),
      home: Scaffold(
        body: welcomePage()
      ),
      onGenerateRoute: Application.router.generator,
    );
  }

  welcomePage() {
    return MainPage();
  }
}
