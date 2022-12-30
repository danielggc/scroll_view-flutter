import 'package:fluro/fluro.dart';
import 'package:scroll_view/router/router_handlers.dart';

class Flurorouter {

  static final FluroRouter router = new FluroRouter();

  static void configureRoutes(){

    router.define(
      '/home', 
      handler: homeHandler,
      transitionType:  TransitionType.cupertino
    );
    router.notFoundHandler = view404;
  }

}