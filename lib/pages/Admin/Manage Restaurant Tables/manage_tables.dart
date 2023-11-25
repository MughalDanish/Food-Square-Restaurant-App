import 'package:flutter/material.dart';

import 'display_create_delete_update Tabels.dart';


class ManageTables extends StatefulWidget {
  const ManageTables({super.key});

  @override
  State<ManageTables> createState() => _ManageTablesState();
}

class _ManageTablesState extends State<ManageTables> {
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
                          'Restaurant Tables',
                          style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.black54),
                        ),
                        SizedBox(width: 780),
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
                    padding: EdgeInsets.only(left:60, top: 30),
                    child: Row(
                      children: [
                        Expanded(child: displayTables()),
                        SizedBox(width: 10),
                        Expanded(child: Create_Update_Delete())
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
