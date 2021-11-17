import 'package:flutter/material.dart';

class Cart2 extends StatefulWidget {
  final String imageUrl;
  final String foodName;
  final String restaurantName;
  final num price;
  final Widget quantityControl;
  const Cart2({Key? key, required this.imageUrl, required this.foodName,
  required this.restaurantName, required this.price, required this.quantityControl, }) : super(key: key);


  @override
  _Cart2State createState() => _Cart2State();
}

class _Cart2State extends State<Cart2> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
            ClipRRect( borderRadius: BorderRadius.circular(15.0),
                child: Image.asset(widget.imageUrl,width: 150,height: 150,fit: BoxFit.cover,)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.foodName,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900),),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.restaurantName,style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),SizedBox(width: 20.0,),
               Text(widget.price.toString(),style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold)),
              ],
            ),
            widget.quantityControl

          ],)
      ],);
  }
}
