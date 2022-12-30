import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scroll_view/layout/main_layout_page.dart';
import 'package:scroll_view/locator.dart';
import 'package:scroll_view/provider/Page_provider.dart';
import 'package:scroll_view/router/router.dart';
import 'package:scroll_view/services/navigation_service.dart';

void main() {
  setupLocator();
  Flurorouter.configureRoutes();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider( create: (_ ) => PageProvider()  )        
      ],
      child : const MyApp(),
    )
    );
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: Flurorouter.router.generator,
      initialRoute: '/home',

    );
  }
}