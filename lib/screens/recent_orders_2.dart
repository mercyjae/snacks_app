import 'package:flutter/material.dart';

class RecentOrders2 extends StatefulWidget {
  final String imageUrl;
  final String foodName;
  final String restaurantName;
  final String date;
  final Widget add;

  const RecentOrders2({Key? key, required this.imageUrl, required this.foodName, required this.restaurantName, required this.date,
  required this.add
  })
      : super(key: key);

  @override
  _RecentOrders2State createState() => _RecentOrders2State();
}

class _RecentOrders2State extends State<RecentOrders2> {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10.0),
        width: 250,
        height: 120,
        decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(width: 1.0, color: Colors.grey.shade300)),
     child: Row(
      children: [
      ClipRRect(borderRadius: BorderRadius.circular(12.0),
          child: Image.asset(widget.imageUrl,width: 100,
            height: 100,fit: BoxFit.cover,),),
      Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(widget.foodName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          Row(
            children: [
              Text(widget.restaurantName,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
              SizedBox(width: 35,),
              widget.add,],
          ),
          Text(widget.date,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),

        ],),
      ),

    ],));
  }
}
