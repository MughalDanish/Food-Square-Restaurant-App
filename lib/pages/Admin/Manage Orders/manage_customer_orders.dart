import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:food_square_restaurant_app/pages/Admin/Manage%20Products%20Board/display_and_create_products.dart';
import 'package:http/http.dart' as http;
import '../../../config.dart';
import '../DashBoard Content/admin_panel.dart';

class manageOrder extends StatefulWidget {
  const manageOrder({super.key});

  @override
  State<manageOrder> createState() => _manageOrderState();
}

class _manageOrderState extends State<manageOrder> {
  final searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          height: double.infinity,
          width: 1300,
          decoration: BoxDecoration(color: Color(0XFFF5F5F5)),
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Column(
              children: [
                Container(
                  height: 70,
                  width: 1250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text(
                          'Manage Orders',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                        SizedBox(width: 715),
                        Container(
                          height: 40,
                          width: 270,
                          //margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: TextField(
                            cursorColor: Colors.black54,
                            controller: searchTextController,
                            decoration: InputDecoration(
                              prefixIcon: const Icon(Icons.search),
                              hintText: 'Search your food',
                              hintStyle: const TextStyle(color: Colors.grey),
                              border: InputBorder.none,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 7),
                            ),
                            onChanged: (text) {},
                          ),
                        ),
                        SizedBox(width: 20),
                        Image(
                          image: AssetImage('assets/images/profile.png'),
                          height: 50,
                          width: 50,
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left:30, top:60),
                    child:
                        Expanded(child: Container(
                            height: double.infinity,
                            width: 1300,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              border: Border.all(
                                color:Colors.red,
                                width: 2
                              )
                            )
                            ,child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left:30),
                              child: Row(
                                children: [
                                  Text("OrderID",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: "Inter"
                                    ),
                                  ),
                                  SizedBox(width: 130),
                                  Text("Order Status",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: "Inter"
                                    ),
                                  ),
                                  SizedBox(width: 100),
                                  Text("Customer Name",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: "Inter"
                                    ),
                                  ),
                                  SizedBox(width: 90),
                                  Text("Phone no",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: "Inter"
                                    ),
                                  ),
                                  SizedBox(width: 100),
                                  Text("Total Bill",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: "Inter"
                                    ),
                                  ),
                                  SizedBox(width: 125),
                                  Text("Mode",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                        fontFamily: "Inter"
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 30),
                            Expanded(child: GridOfOrders()),
                          ],
                        )
                        )),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}





class OrderCartDesign extends StatefulWidget {
  final CustomerOrder object;
  const OrderCartDesign({super.key, required this.object});

  @override
  State<OrderCartDesign> createState() => _OrderCartDesignState();
}
class _OrderCartDesignState extends State<OrderCartDesign> {
  String selectedValue = '';
  List<String> dropdownItems = ['Complete', 'Pending', 'Delivered', 'Processing'];

  // Use a GlobalKey for the DropdownButton
  GlobalKey key = GlobalKey();

  void initState() {
    super.initState();
    selectedValue = widget.object.OrderStatus;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 60,
          width: 2200,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 10),
            child: Row(
              children: [
                Text(
                  getStringID(widget.object.OrderId),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontFamily: "Inter",
                  ),
                ),
                SizedBox(width: 100),

                // Use a Key for the DropdownButton
                DropdownButton<String>(
                  key: key,
                  value: selectedValue,
                  icon: const Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: const TextStyle(color: Colors.deepPurple, fontSize: 17),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),

                SizedBox(width: 100),
                Text(
                  widget.object.CustomerName.toString(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontFamily: "Inter",
                  ),
                ),
                SizedBox(width: 100),
                Text(
                  '+92 ' + widget.object.CustomerPhoneNo.toString(),
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontFamily: "Inter",
                  ),
                ),
                SizedBox(width: 100),
                Text(
                  'Rs, ' + widget.object.totalBill.toString(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    fontFamily: "Inter",
                  ),
                ),
                SizedBox(width: 100),
                ElevatedButton(
                  child: Text(
                    'Save',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFF5733),
                    minimumSize: Size(120, 40),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Adjust the radius as needed
                    ),
                  ),
                  onPressed: () {
                    messageToShow(selectedValue);
                    widget.object.OrderStatus = selectedValue;
                    UpdateOrderItemData(widget.object);
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>AdminPanel(state:'Orders')));
                    // Add the functionality you want for the Save button
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String getStringID(String originalString) {
  // Calculate the midpoint index
  int midpointIndex = originalString.length ~/ 2;

  // Extract the second half of the string
  String secondHalf = originalString.substring(midpointIndex);

  return secondHalf;// Output: 5ed3d2dc
}

List<CustomerOrder> Orders = [];

class GridOfOrders extends StatefulWidget {
  const GridOfOrders({super.key});

  @override
  State<GridOfOrders> createState() => _GridOfOrdersState();
}

class _GridOfOrdersState extends State<GridOfOrders> {
  late Future<List<CustomerOrder>> previousOrders;

  @override
  void initState() {
    super.initState();
    previousOrders = getOrderCartItem();
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
            Orders = snapshot.data ?? [];
            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 24.0),
                itemCount: Orders.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.all(5.0),
                    child: OrderCartDesign(object: Orders[index]),
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


class CustomerOrder {
  final String OrderId;
  final String CustomerName;
  final String CustomerPhoneNo;
  final int totalBill;
  late String OrderStatus;
  CustomerOrder({required this.OrderId,required this.CustomerName, required this.CustomerPhoneNo, required this.OrderStatus, required this.totalBill});
}


Future<List<CustomerOrder>> getOrderCartItem() async {
  List<CustomerOrder> orderItem = [];
  var response = await http.get(Uri.parse(getOrders));
  var data = jsonDecode(response.body);
  if (data['status']) {
    List<dynamic> cartData = data['OrderData'];
    cartData.forEach((value) {
      orderItem.add(
             CustomerOrder(
               OrderId: value['_id'],
              CustomerName: value['customer_name'],
              CustomerPhoneNo: value['phone_no'],
              totalBill: value['price'],
              OrderStatus: value['order_status'],
            )
        );

    });
    messageToShow('Data Loaded Successfully!');
  } else {
    messageToShow('Server Error try again!');
  }
  return orderItem;
}



Future<void> UpdateOrderItemData(CustomerOrder object) async {
  var orderItemBody = {
    "customer_name": object.CustomerName,
    "phone_no": object.CustomerPhoneNo,
    "price": object.totalBill,
    "order_status": object.OrderStatus,
    "status": false
  };

  String updateData = updateOrders + object.OrderId;
  var response = await http.put(Uri.parse(updateData),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode(orderItemBody));

  var jsonResponse = jsonDecode(response.body);
  messageToShow(jsonResponse.toString());
  if (jsonResponse['status']) {
    messageToShow('Order Status Updated Successfully!');
  } else {
    messageToShow('Server Error! Please try again later');
  }
}
