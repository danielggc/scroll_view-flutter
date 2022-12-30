import 'dart:js';

import 'package:fluro/fluro.dart';
import 'package:scroll_view/views/Page404.dart';
import 'package:scroll_view/services/home_page.dart';

  final homeHandler = Handler(
    handlerFunc:  (context, parameters){
      return HomePage();
    }
  );

 final view404 = Handler(
    handlerFunc: (_,__) => Views404() 
  );
