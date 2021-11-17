import 'package:flutter/material.dart';
import 'package:snacks_app/screens/cart.dart';
import 'package:snacks_app/models/food.dart';
import 'package:snacks_app/models/recent_list.dart';
//import 'package:snacks_app/recent_orders.dart';
import 'package:snacks_app/screens/recent_orders_2.dart';
import 'package:snacks_app/screens/rest_list_page.dart';
import 'package:snacks_app/models/restaurant.dart';
import 'package:snacks_app/screens/details_page.dart';

void main() {
  runApp(HomeScreen());
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SnacksApp(),
    );
  }
}


class SnacksApp extends StatefulWidget {
  const SnacksApp({Key? key}) : super(key: key);
  @override
  _SnacksAppState createState() => _SnacksAppState();
}

class _SnacksAppState extends State<SnacksApp> {
  @override
  Widget build(BuildContext context) {
 final double height = MediaQuery.of(context).size.height;
 final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "Food Delivery",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          leading: Icon(Icons.account_circle),
          actions: [
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              }
              , child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Cart(5)",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    )
            ),)
          ]
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: height * 0.1,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                        borderSide: BorderSide(width: 4.0),
                      ),
                      hintText: "Search Food or Restaurants",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.close)),
                ),
              ),
           ),SizedBox(height: 5,),
            Text("Recent Orders",
              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
            SizedBox(height: 5,),
            Container(
              height: 120.0,
             color: Colors.white,
              child: ListView.builder(
                itemCount: recents.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context,index){
                  return RecentOrders2(
                      imageUrl:"${recents[index].imageUrl}",
                      foodName: "${recents[index].foodName}",
                      restaurantName:"${recents[index].restaurantName}",
                      date: "${recents[index].date}",
                    add:
                   Container(
                      width:35,
                      height:35,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(30)),
                      child: IconButton(onPressed: (){}, icon:Icon(Icons.add,color: Colors.white,))),
                    );
                }
              ),
            ),

            SizedBox(height: 10,),
       Text("Nearby Restaurants",
         style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),SizedBox(height: 10,),

            Expanded(child: ListPage()),
          ],
        ),
      ),
    );
  }
}


