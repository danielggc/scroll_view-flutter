import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:scroll_view/provider/Page_provider.dart';
import 'package:scroll_view/ui/shared/items_menu.dart';

class CustomAppMenu extends StatefulWidget{
  @override
  _customAppMenu createState() => _customAppMenu();
}

class _customAppMenu  extends State<CustomAppMenu> with SingleTickerProviderStateMixin{

  bool isOpen = false;
  late AnimationController controller;
  @override
  void initState(){
    super.initState();
    controller = AnimationController( vsync: this, duration: Duration( microseconds: 800 ) );
  }
  @override
  Widget build(BuildContext context) {
    final pageProvider =  Provider.of<PageProvider>(context,listen: false);
    return MouseRegion(
                        cursor:SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap:() {
                            if(isOpen){
                              controller.reverse();
                            }
                            else{
                              controller.forward();
                            }
                            setState(() {
                              isOpen = !isOpen;
                            });
                            
                          },
                          child : Positioned(
                                    right: 40,
                                    top: 10,
                                    child: Container(
                                      padding:  EdgeInsets.symmetric( horizontal: 5 ),
                                      height: isOpen ? 360 : 50,
                                      width: 120,
                                      color: Colors.black,
                                      child: Column(
                                        children: [
                                          menuTitle(),
                                          if(isOpen)...[
                                            ItemsMenu(onPressed: ()=> pageProvider.goTo(0), title: "home", dalay: 30,),
                                            ItemsMenu(onPressed: ()=>pageProvider.goTo(1), title: "contac", dalay: 40 ),
                                            ItemsMenu(onPressed: ()=>pageProvider.goTo(2), title: "pesonal", dalay: 80 ),
                                            ItemsMenu(onPressed: ()=>pageProvider.goTo(3), title: "about", dalay: 120),
                                          ]
                                        ]
                                      ),
                                    )
                                  )
                                )
                              );
  }
  Widget menuTitle(){
    return Row(
      children: [
        AnimatedContainer(
          duration: Duration(microseconds: 800),
          curve:  Curves.easeInOut,
          width: isOpen ? 20 : 0 ,
        ),
        Text( "Menu", style: GoogleFonts.roboto( color:Colors.white, fontSize: 18 ) ),
        Spacer(),
        AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: controller,
          color:Colors.white,
        ),]);
  }
}