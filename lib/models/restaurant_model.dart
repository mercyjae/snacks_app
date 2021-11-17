

class RestaurantModel {
  final String imageUrl;
  final String name;
  final String address;
  final String distance;

  RestaurantModel(
      {required this.imageUrl,
        required this.name,
        required this.address,
        required this.distance});
}
   List<RestaurantModel> restaurants = [
  RestaurantModel(
      imageUrl: "assets/images/restaurant0.jpg",
      name: "Restaurant 0",
      address: "200,Main St,New York,NY",
      distance: "0.2 miles away"),
  RestaurantModel(
      imageUrl: "assets/images/restaurant1.jpg",
      name: "Restaurant 1",
      address: "200,Main St,New York,NY",
      distance: "0.2 miles away"),
  RestaurantModel(
      imageUrl: "assets/images/restaurant2.jpg",
      name: "Restaurant 2",
      address: "200,Main St,New York,NY",
      distance: "0.2 miles away"),
  RestaurantModel(
      imageUrl: "assets/images/restaurant3.jpg",
      name: "Restaurant 3",
      address: "200,Main St,New York,NY",
      distance: "0.2 miles away"),
  RestaurantModel(
      imageUrl: "assets/images/restaurant4.jpg",
      name: "Restaurant 4",
      address: "200,Main St,New York,NY",
      distance: "0.2 miles away"),
  RestaurantModel(
      imageUrl: "assets/images/restaurant1.jpg",
      name: "Restaurant 6",
      address: "900,Main St,New York,NY",
      distance: "0.5 miles away"),
];