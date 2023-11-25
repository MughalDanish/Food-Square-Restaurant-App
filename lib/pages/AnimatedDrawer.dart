import 'package:flutter/material.dart';
import 'package:food_square_restaurant_app/pages/side_menu_list.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

class AnimatedSideBarMenu extends StatefulWidget {
  const AnimatedSideBarMenu({super.key});

  @override
  State<AnimatedSideBarMenu> createState() => _AnimatedSideBarMenuState();
}

class _AnimatedSideBarMenuState extends State<AnimatedSideBarMenu> {
  final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();
  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key:sideMenuKey,
      type: SideMenuType.shrikNRotate,
      maxMenuWidth: 300,
      background: Color(0xFFFF5733),
      menu: SideMenuList(),
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          leading: IconButton(
            icon: Image(image:AssetImage('assets/images/menu.png'),
            height: 25,
            width: 25,),
            onPressed: (){
              if(sideMenuKey.currentState!.isOpened)
                {
                  sideMenuKey.currentState!.closeSideMenu();
                }
              else{
                sideMenuKey.currentState!.openSideMenu();
              }
            },
          ),
          title: Text('Home Screen'),
        ),
      ),
    );
  }
}
