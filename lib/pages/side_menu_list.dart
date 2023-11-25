import 'package:flutter/material.dart';

class SideMenuList extends StatelessWidget {
  const SideMenuList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
         children: [
           Padding(
             padding: EdgeInsets.only(bottom: 10),
             child: Row(
               children: [
                 Image(image: AssetImage('assets/images/profileIcon.png'),
                 height: 50,
                 width: 60,),
                 //SizedBox(width: 5),
                 Column(
                   children: [
                     Text('Muhammad Danish',
                       style: TextStyle(
                           fontSize: 17,
                           fontFamily: 'Inter',
                           fontWeight: FontWeight.w600,
                           color: Colors.white
                       ),),
                     Text('dnmughal54321@gmail.com',
                       style: TextStyle(
                           fontSize: 12,
                           fontFamily: 'Inter',
                           fontWeight: FontWeight.normal,
                           color: Colors.white
                       ),),
                   ],
                 )
               ],
             ),
           ),

           SizedBox(height: 20),
           buttonDecoration(name: 'Profile', image:'assets/images/userProfile.png', onTap: () {}),
           divideListMenu(),
           buttonDecoration(name: 'Orders', image:'assets/images/order.png', onTap: () {}),
           divideListMenu(),
           buttonDecoration(name: 'Offer and promo', image:'assets/images/offers.png', onTap: () {}),
           divideListMenu(),
           buttonDecoration(name: 'Book table', image:'assets/images/restaurant-table.png', onTap: () {}),
           divideListMenu(),
           buttonDecoration(name: 'Help', image:'assets/images/help.png', onTap: () {}),
           SizedBox(height: 100),
           Padding(
             padding: EdgeInsets.only(left:20),
             child: InkWell(
               onTap: (){},
               child: Row(
                 children: [
                   Text('Sign-out',style: TextStyle(
                       fontSize: 17,
                       color: Colors.white,
                       fontWeight: FontWeight.w600
                   ),
                   ),
                   SizedBox(width: 10),
                   Image(image: AssetImage('assets/images/rightArrow.png'),
                     height: 25,
                     width: 20,)
                 ],
               ),
             ),
           )
         ],
    );
  }
  buttonDecoration({
    required String name,
    required String image,
    required VoidCallback onTap
  }){
    return ListTile(
      onTap: (){},
      leading: Image(image: AssetImage(image),
      height: 25,
      width: 25,),
      title: Text(name,
      style: TextStyle(
        fontSize: 17,
        color: Colors.white,
          fontWeight: FontWeight.w600
      ),)
    );
  }
  divideListMenu(){
    return Padding(
      padding: EdgeInsets.only(left:57, right:30),
      child: Divider(
        color: Colors.white24,
      ),
    );
  }
}


