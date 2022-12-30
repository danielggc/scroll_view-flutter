import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsMenu extends StatefulWidget{
  Function onPressed;
  String title;
  int  dalay;
  ItemsMenu( { required this.onPressed , required this.title, this.dalay = 0 });
  _itemsMenu createState()=> _itemsMenu();
}
class _itemsMenu extends State<ItemsMenu>{
  @override
  bool ishover = false;

  Widget build(BuildContext context) {
    // TODO: implement build
    return FadeInLeft(
      duration: Duration( milliseconds: widget.dalay ),
      child:  MouseRegion(
        onEnter: (_) => {
          setState(() {
            this.ishover = true;  
          })
        },
        onExit:  (_) => {
          setState(() {
            this.ishover = false;  
          })
        }, 
        child: GestureDetector(
          onTap: () =>  widget.onPressed(),
          child: AnimatedContainer(
            duration:  Duration( milliseconds: 300 ),
            width: 120,
            height: 80,
            color: this.ishover ? Colors.pink : Colors.black ,
            child: Center(
              child: Text(
                widget.title,
                style:GoogleFonts.roadRage(
                  fontSize: 20,
                  color:Colors.white
                ),
              )
            ),
          ),
        ),
      )
    );
  }
}