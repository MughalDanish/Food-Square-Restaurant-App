import 'package:flutter/material.dart';

class TableCart extends StatelessWidget {
  final TableCartDesign table_cart;
  
  const TableCart({Key? key, required this.table_cart}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width:190,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8)
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                  height: 140,
                  width:200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: IconButton(
                    icon: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image(image: AssetImage(table_cart.image),
                        height: 140,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    onPressed: (){

                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 60),
                  child: Text(table_cart.name,
                    textAlign:TextAlign.left,
                    style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                    fontFamily: 'Inter',
                    color: Colors.black
                  ),),
                ),
                Padding(
                  padding: EdgeInsets.only(right:19),
                  child: Text(table_cart.detail,style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Inter',
                      color: Colors.black54
                  ),),
                ),
                SizedBox(height: 1),
                Padding(
                  padding: EdgeInsets.only(left:4),
                  child: Row(
                    children: [
                      Image(image: AssetImage(table_cart.status_image),
                      height: 18,
                      width: 18,),
                      SizedBox(width: 5),
                      Text(table_cart.status,style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          fontFamily: 'Inter',
                          color: Colors.black54
                      ),),
                    ],

                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TableCartDesign {
  final String name;
  final String image;
  final String detail;
  final String status;
  final String status_image;

  TableCartDesign(
      {required this.name,
        required this.image,
        required this.detail,
        required this.status,
      required this.status_image});
}
class TableCartsGrid extends StatelessWidget {
  TableCartsGrid({super.key});
  final List<TableCartDesign> table_cart = [
    TableCartDesign(
        name: 'Riverside View',
        image: 'assets/images/table5.jpg',
        detail:
        'Lorem ipsum dolor sit amet',
        status: 'Reserved',
        status_image: 'assets/images/reserve.png'),
    TableCartDesign(
        name: 'Sunset Serenity',
        image: 'assets/images/table1.jpg',
        detail:
        'Lorem ipsum dolor sit amet',
        status: 'Available',
        status_image: 'assets/images/open.png'),
    TableCartDesign(
        name: 'Harbor Haven',
        image: 'assets/images/table2.jpg',
        detail:
        'Lorem ipsum dolor sit amet',
        status: 'Available',
        status_image: 'assets/images/open.png'),
    TableCartDesign(
        name: 'Cafe Chicomay',
        image: 'assets/images/table3.jpg',
        detail:
        'Lorem ipsum dolor sit amet',
        status: 'Reserved',
        status_image: 'assets/images/reserve.png'),
    TableCartDesign(
        name: 'Riverside View',
        image: 'assets/images/table5.jpg',
        detail:
        'Lorem ipsum dolor sit amet',
        status: 'Reserved',
        status_image: 'assets/images/reserve.png'),
    TableCartDesign(
        name: 'Sunset Serenity',
        image: 'assets/images/table1.jpg',
        detail:
        'Lorem ipsum dolor sit amet',
        status: 'Available',
        status_image: 'assets/images/open.png'),
    TableCartDesign(
        name: 'Harbor Haven',
        image: 'assets/images/table2.jpg',
        detail:
        'Lorem ipsum dolor sit amet',
        status: 'Available',
        status_image: 'assets/images/open.png'),
    TableCartDesign(
        name: 'Cafe Chicomay',
        image: 'assets/images/table3.jpg',
        detail:
        'Lorem ipsum dolor sit amet.',
        status: 'Reserved',
        status_image: 'assets/images/reserve.png'),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
              childAspectRatio: 0.85
          ),
          itemCount: table_cart.length,
          itemBuilder: (context, index) {
            return
              Padding(
                padding: EdgeInsets.all(5.0),
                child: TableCart(table_cart: table_cart[index]
                ),
              );
          },
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
        ),
      ),
    );
  }
}

