import 'package:snacks_app/models/food.dart';
class Restaurant{
  final String imageUrl;
  final String name;
  final String address;
  final int rating;
  final List<Food> menu;

  Restaurant({required this.imageUrl,required this.name,required this.address,required this.menu,required this.rating});
}
final restaurant0 = Restaurant(imageUrl:"assets/images/restaurant0",
  name: "Restaurant0",address:"200 Main St,New York,NY",rating: 4,menu:[burrito,steak,pasta,burger,pizza,ramen,pancakes,]
);final restaurant1 = Restaurant(imageUrl:"assets/images/restaurant1",
  name: "Restaurant0",address:"200 Main St,New York,NY",rating: 5,menu:[burrito,steak,pasta,burger,pizza,ramen,pancakes,]
);final restaurant2 = Restaurant(imageUrl:"assets/images/restaurant2",
  name: "Restaurant0",address:"200 Main St,New York,NY",rating: 4,menu:[burrito,steak,pasta,burger,pizza,ramen,pancakes,]
);final restaurant3 = Restaurant(imageUrl:"assets/images/restaurant3",
  name: "Restaurant0",address:"200 Main St,New York,NY",rating: 3,menu:[burrito,steak,pasta,burger,pizza,ramen,pancakes,]
);final restaurant4 = Restaurant(imageUrl:"assets/images/restaurant4",
  name: "Restaurant0",address:"200 Main St,New York,NY",rating: 4,menu:[burrito,steak,pasta,burger,pizza,ramen,pancakes,]
);
final List<Restaurant> res =[
restaurant0,
restaurant1,
restaurant2,
restaurant3,
restaurant4,
];