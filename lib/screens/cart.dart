
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snacks_app/models/user_cart.dart';
import 'package:snacks_app/screens/cart%20%202.dart';

class Cart extends StatefulWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
        appBar: AppBar(
          title: Center(child: Text("Cart")),
          backgroundColor: Colors.red,
        ),
        body: ListView.separated(
            shrinkWrap: true,
            itemCount: cart.length,
            itemBuilder: (context, index) {
              if(index < cart.length){
              return Cart2(
                imageUrl: "${cart[index].imageUrl}",
                foodName: "${cart[index].foodName}",
                restaurantName: "${cart[index].restaurantName}",
                price: cart[index].price,
                quantityControl: Container(
                  width: 70,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: GestureDetector(onTap: (){},
                            child: Text("+", style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 16))),),
                      SizedBox(width: 10,),
                      Text("2",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w900,fontSize: 10),),
                      SizedBox(width: 10,),
                      Padding(
                        padding: const EdgeInsets.only(right:
                        12.0),
                        child: GestureDetector(onTap: (){},
                          child: Text("-",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 16),)),),

                    ],),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),
                    color: Colors.white,border: Border.all(width: 1.0,color: Colors.grey),
                  ),

                ),

              );}
              return Column(
                children: [
                  Row(
                  children: [
                Text("Estimated Delivery Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                    Text("25 mins",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
              ],),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Estimated Delivery Time",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                      Text("25 mins",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black))
                    ],) ]
                ,);
            },
            //    return ListTile(
            //   leading: Image.asset(
            //     "${cart[index].imageUrl}",
            //     width: 80,
            //     height: 80,
            //   ),
            //   title: Text("${cart[index].foodName}"),
            //   subtitle: Text(
            //     "${cart[index].restaurantName}",
            //   ),
            //   trailing: Text("${cart[index].price.toString()}"),
            // );

            separatorBuilder: (BuildContext context,int index){
              return Divider(height: 6.0,color: Colors.grey,);

            }
        ),
        bottomSheet: Container(height: 80,width: MediaQuery.of(context).size.width
        ,decoration: BoxDecoration(color: Colors.red),
    child: GestureDetector(onTap: (){},
    child: Center(child: Text("CHECK OUT",style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 25),)))
    )  );
  }
}
