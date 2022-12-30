


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainLatoutPage extends StatelessWidget{
  
  Widget child ;

  MainLatoutPage({ required this.child });

  @override
  Widget build(BuildContext context) {
    print("pintando el  main latous page ");
    // TODO: implement build
    return Scaffold(
      body:Center(
        child:  Column(children: [
            Spacer(),
            Expanded(child:  child, ),
            Spacer()
          ]
        ),
      )
    );
  }
}