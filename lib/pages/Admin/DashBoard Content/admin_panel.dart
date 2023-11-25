import 'package:flutter/material.dart';
import 'dash_board.dart';


class AdminPanel extends StatefulWidget {
  const AdminPanel({super.key});
  @override
  State<AdminPanel> createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {

  //late final Container controller = Container();
  late  StatefulWidget controller = DashBoard();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
          children: [
            Container(
              height: double.infinity,
              width: 300,
              decoration: BoxDecoration(
                  color: Color(0xFFFF5733), borderRadius: BorderRadius.circular(4)),
              child: ListView(
                children: [
                  Row(
                    children: [
                      Image(
                        image: AssetImage('assets/images/food_square_logo.png'),
                        height: 70,
                        width: 70,
                        color: Colors.white,
                      ),
                      SizedBox(width: 20),
                      Column(
                        children: [
                          RichText(
                            text: TextSpan(
                              text: 'Food ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.bold),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Square',
                                    style: TextStyle(
                                      color: Colors.black54,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Inter',
                                    )),
                              ],
                            ),
                          ),
                          Text(
                            'A World of Flavor',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.black54,
                                fontFamily: 'Inter',
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 60),
                  buttonDecoration(
                      name: 'Dashboard',
                      image: 'assets/images/dashBoard.png',
                      onTap: () {}),
                  divideListMenu(),
                  buttonDecoration(
                      name: 'Products',
                      image: 'assets/images/product.png',
                      onTap: () {}),
                  divideListMenu(),
                  buttonDecoration(
                      name: 'Orders',
                      image: 'assets/images/order.png',
                      onTap: () {}),
                  divideListMenu(),
                  buttonDecoration(
                      name: 'Offer and promo',
                      image: 'assets/images/offers.png',
                      onTap: () {}),
                  divideListMenu(),
                  buttonDecoration(
                      name: 'Manage Tables',
                      image: 'assets/images/restaurant-table.png',
                      onTap: () {}),
                  divideListMenu(),
                  buttonDecoration(
                      name: 'Help', image: 'assets/images/help.png', onTap: () {
                      controller =  DashBoard();
                  }),
                  SizedBox(height: 200),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            'Sign-out',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(width: 10),
                          Image(
                            image: AssetImage('assets/images/rightArrow.png'),
                            height: 25,
                            width: 20,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
           Expanded(child: controller)
          ],
        ));
  }

  buttonDecoration(
      {required String name,
        required String image,
        required VoidCallback onTap}) {
    return ListTile(
        onTap: () {},
        leading: Image(
          image: AssetImage(image),
          height: 25,
          width: 25,
        ),
        title: Text(
          name,
          style: TextStyle(
              fontSize: 17, color: Colors.white, fontWeight: FontWeight.w600),
        ));
  }

  divideListMenu() {
    return Padding(
      padding: EdgeInsets.only(left: 57, right: 30),
      child: Divider(
        color: Colors.white24,
      ),
    );
  }
}
