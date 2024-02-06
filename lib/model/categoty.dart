class Category {
  final String cat_name;
  final int cat_id;
  final String cat_img;

  Category(
      {required this.cat_id, required this.cat_name, required this.cat_img});
}

List<Category> dummy_categories = [
  Category(cat_id: 1, cat_name: 'Burger', cat_img: 'assets/images/burger.png'),
  Category(cat_id: 2, cat_name: 'Pizza', cat_img: 'assets/images/pizza.png'),
  Category(cat_id: 3, cat_name: 'Pasta', cat_img: 'assets/images/pasta.png'),
  Category(cat_id: 4, cat_name: 'Drinks', cat_img: 'assets/images/drink.png'),
  Category(cat_id: 5, cat_name: 'Sweet', cat_img: 'assets/images/cake.png'),
];
