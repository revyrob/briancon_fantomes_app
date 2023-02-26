class DataModel {
  final String title;
  final String imageName;
  final double price;
  DataModel(
    this.title,
    this.imageName,
    this.price,
  );
}

List<DataModel> dataList = [
  DataModel("Chapter 1", "assets/images/arret1.jpg", 300.8),
  DataModel("Chapter 2", "assets/images/arret2.jpg", 245.2),
  DataModel("Chapter 3", "assets/images/arret3.jpg", 168.2),
  DataModel("Chapter 4", "assets/images/arret4.jpg", 136.7),
];
