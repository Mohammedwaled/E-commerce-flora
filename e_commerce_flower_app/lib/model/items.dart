class Items {
  String imgPath;
  double price;
  String location;
  String name;

  Items({required this.imgPath, required this.name, required this.price, this.location = "Main branch"});
}
List<Items> items = [
  Items(imgPath: "assets/images/flower1.png", name: "Red Rose", price: 29.99),
  Items(imgPath: "assets/images/flower2.png", name: "Pink Tulip", price: 19.99),
  Items(imgPath: "assets/images/flower3.png", name: "White Lily", price: 24.99),
  Items(imgPath: "assets/images/flower4.png", name: "Yellow Daisy", price: 14.99),
];

//في هنا غلط في مسار الصور 