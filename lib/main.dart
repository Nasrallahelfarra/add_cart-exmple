import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_task/screen/home/HomePage.dart';

import 'helper/Messages.dart';
import 'helper/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: theme(),
      title: 'Home Test',
      translations: Messages(),
      // your translations
      locale: Locale('en'),
      fallbackLocale: Locale('en'),
      /* onGenerateRoute: (RouteSettings settings) {
          if (settings.name == '/') {
            return new MaterialPageRoute<Null>(
              settings: settings,
              builder: (_) => new MyApp(
                lang: lang,
              ),
              maintainState: false,
            );
          }
          return null;
        },*/
    );
  }
}


