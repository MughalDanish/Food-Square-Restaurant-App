import 'package:flutter/material.dart';
import 'package:food_square_restaurant_app/pages/Restaurant%20Tables/userTableCart.dart';
import 'package:food_square_restaurant_app/pages/side_menu_list.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import 'TableCart.dart';

class restaurantTablesPage extends StatefulWidget {
  const restaurantTablesPage({super.key});

  @override
  State<restaurantTablesPage> createState() => _restaurantTablesPageState();
}

class _restaurantTablesPageState extends State<restaurantTablesPage> {
  final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();
  final searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SideMenu(
      key: sideMenuKey,
      type: SideMenuType.shrikNRotate,
      maxMenuWidth: 300,
      background: Color(0xFFFF5733),
      menu: SideMenuList(),
      child: DefaultTabController(
        length: 3, // Number of tabs
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0XFFF5F5F5),
            leading: IconButton(
              icon: Image(
                  image: AssetImage('assets/images/menuType2.png'),
                  height: 25,
                  width: 20),
              onPressed: () {
                if(sideMenuKey.currentState!.isOpened)
                {
                  sideMenuKey.currentState!.closeSideMenu();
                }
                else{
                  sideMenuKey.currentState!.openSideMenu();
                }
              },
            ),
            actions: <Widget>[
              IconButton(
                icon: Image(
                    image: AssetImage('assets/images/shopping-cart.png'),
                    height: 20,
                    width: 20),
                onPressed: () {},
              ),
            ],
          ),
          body: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 50),
                child: Text(
                  'Dine with Us, Your Table,\nYour Story',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontFamily: 'Inter',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 40,
                margin:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  cursorColor: Colors.black54,
                  controller: searchTextController,
                  decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search your dining table',
                    hintStyle: const TextStyle(color: Colors.grey),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 11),
                  ),
                  onChanged: (text) {},
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: TabBar(
                  tabs: [
                    Tab(
                      text: 'Top Rated',
                    ),
                    Tab(text: 'Most Popular'),
                    Tab(text: 'Special Places'),
                  ],
                  labelPadding: EdgeInsets.symmetric(horizontal: 10),
                  // Adjust padding as needed
                  labelColor: Color(0xFFFF5733),
                  // Set the color of the selected tab label
                  unselectedLabelColor: Colors.black54,
                  // Set the color of unselected tab labels
                  indicatorColor: Color(0xFFFF5733),
                  // Set the color of the tab indicator
                  indicatorWeight: 3,
                  // Set the thickness of the tab indicator
                  indicatorSize: TabBarIndicatorSize.label,
                  //indicatorPadding: EdgeInsets.symmetric(horizontal: 1), // Adjust padding as needed
                  labelStyle:
                      TextStyle(fontSize: 16), // Adjust font size as needed
                ),
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    GridOfTableCarts(),
                    Center(child: Text('Drinks Content')),
                    Center(child: Text('Snacks Content')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
