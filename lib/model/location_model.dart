class Locations {
  String title;
  String place;
  int cost;
  double rating;
  String image;

  Locations(this.title, this.place, this.cost, this.rating, this.image);

  static List<Locations> generatedLocation() {
    return [
      Locations(
          "USA Best Hotel", "USA", 150, 4.0, "assets/images/icon2.jpg"),
      Locations(
          "UK Best Hotel", "UK", 100, 2.0, "assets/images/icon2.jpg"),
      Locations(
          "Russia Best Hotel", "Russia", 300, 1.0, "assets/images/icon2.jpg"),
      Locations(
          "Spain Best Hotel", "Spain", 550, 4.5, "assets/images/icon2.jpg"),
      Locations(
          "Italy Best Hotel", "Italy", 1000, 1.5, "assets/images/icon2.jpg"),
    ];
  }
}
