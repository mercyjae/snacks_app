
class Food{
final String imageUrl;
final String name;
final double price;

  Food({required this.imageUrl, required this.name, required this.price});
}
final burrito = Food(imageUrl: "assets/images/burrito.jpg",name: "Burrito",price: 8.99);
final steak = Food(imageUrl: "assets/images/steak.jpg",name: "Steak",price: 17.99);
final pasta = Food(imageUrl: "assets/images/pasta.jpg",name: "Pasta",price: 14.99);
final ramen = Food(imageUrl: "assets/images/ramen.jpg",name: "Ramen",price: 13.99);
final pancakes = Food(imageUrl: "assets/images/pancakes.jpg",name: "Pancakes",price: 9.99);
final burger = Food(imageUrl: "assets/images/burger.jpg",name: "Burger",price: 14.99);
final pizza = Food(imageUrl: "assets/images/pizza.jpg",name: "Pizza",price: 11.99);
final ralmon = Food(imageUrl: "assets/images/salmon.jpg",name: "Ralmon",price: 12.99);

List<Food> foods = [
  burrito, steak,pasta, ramen, pancakes, burger, pizza, ralmon
];
