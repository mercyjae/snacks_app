
import 'package:flutter/material.dart';
class RestaurantItem extends StatefulWidget {
final String imageUrl;
final String name;
final String address;
final String distance;
final Function() onTap;
  const RestaurantItem({Key? key, required this.imageUrl, required this.name,
    required this.address, required this.distance,  required this.onTap}) : super(key: key);

  @override
  _RestaurantItemState createState() => _RestaurantItemState();
}

class _RestaurantItemState extends State<RestaurantItem> {
  @override
  Widget build(BuildContext context) {
    return
     InkWell(
       onTap: widget.onTap,
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
        ClipRRect(borderRadius: BorderRadius.circular(15.0),
            child: Image.asset(widget.imageUrl,width: 150,height: 150,fit: BoxFit.cover,)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(widget.name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
            SizedBox(height: 5,),
          Text(widget.address,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
            SizedBox(height: 5,),
          Text(widget.distance,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
        ],)
    ],),
     );
  }
}