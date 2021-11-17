import 'package:flutter/material.dart';

class GridDataSingleItem extends StatefulWidget {
  final String imageUrl;
  final String name;
  final num price;
  final Function() onTap;
  const GridDataSingleItem({Key? key, required this.imageUrl,
    required this.name, required this.price, required this.onTap}) : super(key: key);

  @override
  _GridDataSingleItemState createState() => _GridDataSingleItemState();
}

class _GridDataSingleItemState extends State<GridDataSingleItem> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      child: Stack(children: [
        ClipRRect(borderRadius: BorderRadius.circular(12.0),
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30)),
              margin: EdgeInsets.only(left: 8.0,right: 8.0),
                child: Image.asset(widget.imageUrl,width: 150,height: 150,fit: BoxFit.cover,))),
        Positioned(
          bottom:12,
          right:10,
          child: Container(
              width:45,
              height:45,
              decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(30)),

              child: IconButton(onPressed: (){}, icon:Icon(Icons.add,color: Colors.white,))),
        ),
        Positioned(
            top: 50,
            bottom:50,
            left: 0.0,
            right: 0.0,
            child: Column(
              children: [
                Text(widget.name, style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900, color: Colors.white),),
                Text("${widget.price}", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w900, color: Colors.white),),
              ],
            ))
      ],),
    );
  }
}
