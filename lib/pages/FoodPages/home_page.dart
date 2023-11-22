import 'package:flutter/material.dart';

class HomeFoodPage extends StatefulWidget {
  const HomeFoodPage({Key? key}) : super(key: key);

  @override
  State<HomeFoodPage> createState() => _HomeFoodPageState();
}

class _HomeFoodPageState extends State<HomeFoodPage> {
  final searchTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5, // Number of tabs
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: Image(image: AssetImage('assets/images/menuType2.png'), height: 25, width: 20),
            onPressed: () {},
          ),
          actions: <Widget>[
            IconButton(
              icon: Image(image: AssetImage('assets/images/shopping-cart.png'), height: 20, width: 20),
              onPressed: () {},
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(right: 105),
              child: Text(
                'A World of Flavor at\nYour Fingertips',
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
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextField(
                cursorColor: Colors.black54,
                controller: searchTextController,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search your food',
                  hintStyle: const TextStyle(color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 11),
                ),
                onChanged: (text) {},
              ),
            ),

            Align(
              alignment: Alignment.centerLeft,
              child: TabBar(
                tabs: [
                  Tab(text: 'Food'),
                  Tab(text: 'Drinks'),
                  Tab(text: 'Snacks'),
                  Tab(text: 'Pizzas'),
                  Tab(text: 'Sauces'),
                ],
                labelPadding: EdgeInsets.symmetric(horizontal: 10), // Adjust padding as needed
                labelColor: Color(0xFFFF5733), // Set the color of the selected tab label
                unselectedLabelColor: Colors.black54, // Set the color of unselected tab labels
                indicatorColor: Color(0xFFFF5733), // Set the color of the tab indicator
                indicatorWeight: 3, // Set the thickness of the tab indicator
                indicatorSize: TabBarIndicatorSize.label,
                //indicatorPadding: EdgeInsets.symmetric(horizontal: 1), // Adjust padding as needed
                labelStyle: TextStyle(fontSize: 16), // Adjust font size as needed
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Center(child: Text('Food Content')),
                  Center(child: Text('Drinks Content')),
                  Center(child: Text('Snacks Content')),
                  Center(child: Text('Pizza Content')),
                  Center(child: Text('More Content')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
