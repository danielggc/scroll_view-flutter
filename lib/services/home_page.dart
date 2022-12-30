import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scroll_view/ui/shared/custom_app_menu.dart';
import 'package:scroll_view/views/about_view.dart';
import 'package:scroll_view/views/contac_view.dart';
import 'package:scroll_view/views/home_view.dart';
import 'package:scroll_view/views/personal_view.dart';
import 'package:provider/provider.dart';
import 'package:scroll_view/provider/Page_provider.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        decoration: buildDecorationBackground(),
        child:Stack(
            children: [
              _HomeBody(),
              CustomAppMenu(),
            ],
          )
        ) ,
    );
  }
  BoxDecoration buildDecorationBackground()=> BoxDecoration(
    gradient: LinearGradient( 
      colors: [
        Colors.purpleAccent,
        Colors.greenAccent,
      ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.2,0.5]
    )
  );
}


Widget menu (){
  return Positioned(
    right: 20,
    top: 20,
    child: Container (
      width: 60,
      height: 60,
      color: Colors.amberAccent,
    )
  );
}

class _HomeBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final pageProvider =  Provider.of<PageProvider>(context,listen: false);
    return PageView(
      controller:  pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      children: [
        HomeView(),
        ContactView(),
        PersonalView(),
        AboutView(),
      ],
    );
  }
}