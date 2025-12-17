class GridModel {
  final String title;
  final String imagePath;

  GridModel({required this.title, required this.imagePath});
}

final List<GridModel> popularCategories = [
  GridModel(title: 'Motors', imagePath: 'assets/catogories_image/car.png'),
  GridModel(
    title: 'Real Estate',
    imagePath: 'assets/catogories_image/real-estate.png',
  ),
  GridModel(
    title: 'Rental Cars',
    imagePath: 'assets/catogories_image/rental-car.png',
  ),
  GridModel(title: 'Mobile & Tablets', imagePath: 'assets/catogories_image/mobile.png'),
  GridModel(title: 'Jobs', imagePath: 'assets/catogories_image/car.png'),
  GridModel(
    title: 'Services',
    imagePath: 'assets/catogories_image/real-estate.png',
  ),
  GridModel(
    title: 'Other Categories',
    imagePath: 'assets/catogories_image/rental-car.png',
  ),

];
