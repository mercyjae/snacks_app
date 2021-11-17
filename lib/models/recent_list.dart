class RecentList{
  final String imageUrl;
  final String foodName;
  final String restaurantName;
  final String date;

  RecentList({
    required this.imageUrl, required this.foodName,
    required this.restaurantName, required this.date});
}

List<RecentList> recents = [
  RecentList(
      imageUrl: "assets/images/steak.jpg",
      foodName: "Steak",
      restaurantName: "Restaurant 2",
      date: "Nov,10,2019"),
  RecentList(
      imageUrl: "assets/images/ramen.jpg",
      foodName: "Ramen",
      restaurantName: "Restaurant 0",
      date: "Nov,8,2019"),
  RecentList(
      imageUrl: "assets/images/burrito.jpg",
      foodName: "Burrito",
      restaurantName: "Restaurant 1",
      date: "Nov,5,2019"),
  RecentList(
      imageUrl: "assets/images/salmon.jpg",
      foodName: "Salmon",
      restaurantName: "Restaurant 3",
      date: "Nov,2,2019"),
  RecentList(
      imageUrl: "assets/images/pancakes.jpg",
      foodName: "Pancakes",
      restaurantName: "Restaurant 1",
      date: "Nov,1,2019"),
];