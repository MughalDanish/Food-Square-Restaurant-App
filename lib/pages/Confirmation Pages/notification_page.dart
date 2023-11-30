import 'dart:convert';
import 'package:cloudinary_url_gen/transformation/resize/pad.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../config.dart';
import '../Admin/Manage Orders/manage_customer_orders.dart';
import '../Authuntication/login_page.dart';
import '../NavigationMenu/navigation_menu.dart';

class notificationOfOrder extends StatelessWidget {
  final CustomerOrder object;
  const notificationOfOrder({super.key, required this.object});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 60,
        width:500,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: EdgeInsets.only(top:5),
          child: Row(
            children: [
              CircleAvatar(
                radius: 40,
                child: Image(image:AssetImage('assets/images/notificationOrder.png'),
                fit: BoxFit.cover,),
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  Text( notification(object.OrderStatus),
                    style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right:140),
                    child: Text('OrderId#'+ getStringID(object.OrderId),
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 9,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          color: Colors.red
                      ),
                    ),
                  ),
                    Padding(
                      padding: EdgeInsets.only(right:200),
                      child: Text(object.OrderStatus,
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontSize: 9,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w600,
                            color: Colors.red
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

String notification(String status){
  if(status == 'Processing'){
    return 'Thank you for order. we will be back soon.';
  }
  else if(status == 'Complete'){
    return 'Your Order is Complete Enjoy your meal.   ';
  }
  else if(status == 'Delivered'){
    return 'Be Patient!, Your Delivery is on the way.  ';
  }
  else if(status == 'Cancel'){
    return 'Oh Sorry! We can\'t full fill your order. ';
  }
  return "";
}

List<CustomerOrder> notificationList = [];

class notifcationGrid extends StatefulWidget {
  const notifcationGrid({super.key});

  @override
  State<notifcationGrid> createState() => _notifcationGridState();
}

class _notifcationGridState extends State<notifcationGrid> {
  late Future<List<CustomerOrder>> previousOrders;

  @override
  void initState() {
    super.initState();
    previousOrders = getUserNotification();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<CustomerOrder>>(
        future: previousOrders,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator(); // Loading indicator while data is being fetched.
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else {
            notificationList = snapshot.data ?? [];
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 6.0),
                itemCount: notificationList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: notificationOfOrder(object: notificationList[index]),
                  );
                },
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
              ),
            );
          }
        },
      ),
    );
  }
}



Future<List<CustomerOrder>> getUserNotification() async {
  List<CustomerOrder> orderItem = [];
  var response = await http.get(Uri.parse(getOrders));
  var data = jsonDecode(response.body);
  if (data['status']) {
    List<dynamic> cartData = data['OrderData'];
    cartData.forEach((value) {
      if(value['phone_no'] == '03147535843')
        {
          orderItem.add(
              CustomerOrder(
                OrderId: value['_id'],
                CustomerName: value['customer_name'],
                CustomerPhoneNo: value['phone_no'],
                totalBill: value['price'],
                OrderStatus: value['order_status'],
              )
          );
        }
    });
    messageToShow('Data Loaded Successfully!');
  } else {
    messageToShow('Server Error try again!');
  }
  return orderItem;
}

class notificatioPage extends StatelessWidget {
  const notificatioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0XFFF5F5F5),
          leading: IconButton(
            icon: Image(
                image: AssetImage('assets/images/icons.png'),
                height: 25,
                width: 20),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NavigationMenuBar()));
            },
          ),
          title: Padding(
            padding: EdgeInsets.only(left: 50),
            child: Text('Notifications',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    fontFamily: 'Actor')),
          )),
      body: Padding(
        padding: EdgeInsets.only(top: 30),
          child: notifcationGrid())
    );
  }
}
