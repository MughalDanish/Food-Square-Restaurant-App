import 'package:flutter/material.dart';
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../../../config.dart';
import 'manage_customer_orders.dart';


// API call to add orders to database
Future<void> addOrderToDataBase(CustomerOrder object) async {
  var orderItemBody = {
    "customer_name": object.CustomerName,
    "phone_no": object.CustomerPhoneNo,
    "price": object.totalBill,
    "order_status": object.OrderStatus,
    "status": true
  };

  var response = await http.post(Uri.parse(addOrders),
      headers: {
        "Content-Type": "application/json",
      },
      body: jsonEncode(orderItemBody));

  var jsonResponse = jsonDecode(response.body);
  if (jsonResponse['status']) {
    messageToShow('Order Completed Successfully!');
  } else {
    messageToShow('Server Error! Please try again later');
  }
}
