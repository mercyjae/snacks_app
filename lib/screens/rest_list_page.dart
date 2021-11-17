import 'package:flutter/material.dart';
import 'package:snacks_app/models/restaurant_model.dart';
import 'package:snacks_app/models/restaurant.dart';
import 'package:snacks_app/screens/restaurant_item.dart';
import 'package:snacks_app/screens/details_page.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: restaurants.length,
      itemBuilder: (context, index) {
        return
          //   ListTile(
          //   leading: Image.asset("${restaurant[index].imageUrl}",width: 80,height: 80, ),
          //   title: Text("${restaurant[index].name}"),
          //   subtitle: Text("${restaurant[index].address}",
          //       ),
          //   trailing:Text("${restaurant[index].distance}"),
          // );

          RestaurantItem(
            imageUrl: "${restaurants[index].imageUrl}",
            address: "${restaurants[index].address}",
            name: "${restaurants[index].name}",
            distance: "${restaurants[index].distance}",
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder:
                  (context)=>DetailsPage(restaurantModel: restaurants[index],)));
            }
          );
      }, separatorBuilder: (BuildContext context, int index) {
      return Divider(height: 6.0,color: Colors.white10,);
    },
    );
  }
}

