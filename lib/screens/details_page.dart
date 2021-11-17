import 'package:flutter/material.dart';
import 'package:snacks_app/models/food.dart';
import 'package:snacks_app/models/restaurant_model.dart';
import 'package:snacks_app/screens/girddata.dart';
import 'package:snacks_app/models/restaurant.dart';

class DetailsPage extends StatefulWidget {
 final RestaurantModel restaurantModel;
  const DetailsPage( {Key? key, required this.restaurantModel,}) : super(key: key);
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                 widget.restaurantModel.imageUrl,
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: 30.0,
                      ),
                      Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 30.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(widget.restaurantModel.name,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),),
                      Text(widget.restaurantModel.distance,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)],
                  ),SizedBox(height: 5,),
                  Text(widget.restaurantModel.address,style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.red,
                    child: Text(
                      "Reviews",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {}),
                RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.red,
                    child: Text(
                      "Contact",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {}),
              ],
            ),
         Center(child: Text("Menu",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900))),

            Expanded(
              child: GridView.builder(
                itemCount: foods.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount:2,
                    crossAxisSpacing: 4.0,
                    mainAxisSpacing: 0.0
                ),
                itemBuilder: (BuildContext context, int index){
                  return GridDataSingleItem(imageUrl: foods[index].imageUrl,
                      name: foods[index].name, price: foods[index].price, onTap: (){
                    },);
                },
              ),
            )
          ],
        ),
    );
  }
}
