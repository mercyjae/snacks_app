class UserCart{
 final String imageUrl;
  final String foodName;
  final String restaurantName;
  final double price;

  UserCart({required this.imageUrl, required this.foodName, required this.restaurantName, required this.price});
}

List<UserCart> cart = [

  UserCart(
      imageUrl: "assets/images/burger.jpg",
      foodName: "Burger",
      restaurantName: "Restaurant 2",
      price: 20.9),
  UserCart(
      imageUrl: "assets/images/pasta.jpg",
      foodName: "Pasta",
      restaurantName: "Restaurant 2",
      price: 14.9),
  UserCart(
      imageUrl: "assets/images/salmon.jpg",
      foodName: "Salmon Salad",
      restaurantName: "Restaurant 3",
      price: 12.99),
  UserCart(
      imageUrl: "assets/images/pancakes.jpg",
      foodName: "Pancakes",
      restaurantName: "Restaurant 4",
      price: 29.97),
  UserCart(
      imageUrl: "assets/images/burrito.jpg",
      foodName: "Burrito",
      restaurantName: "Restaurant 1",
      price: 17.98),
];