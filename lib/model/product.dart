import 'package:food_app/model/categoty.dart';

class Product {
  final int product_id;
  final String product_name;
  final String product_price;
  final String product_desc;
  final String product_img;
  final Category product_category;

  Product(
      {required this.product_id,
      required this.product_name,
      required this.product_price,
      required this.product_desc,
      required this.product_img,
      required this.product_category});
}

List<Product> dummy_products = [
  // Burger products
  Product(
      product_id: 1,
      product_name: 'Chicken Burger',
      product_price: '10',
      product_desc: 'Grilled chicken burger with mushroom sauce',
      product_img: 'assets/images/chicken_burger.jpg',
      product_category: dummy_categories[0]),
  Product(
      product_id: 2,
      product_name: 'Beef Burger',
      product_price: '12',
      product_desc: 'Juicy beef burger with cheese and BBQ sauce',
      product_img: 'assets/images/beef_burger.jpg',
      product_category: dummy_categories[0]),
  Product(
      product_id: 3,
      product_name: 'Veggie Burger',
      product_price: '9',
      product_desc: 'Vegetarian burger with lettuce, tomato, and special sauce',
      product_img: 'assets/images/veggie_burger.jpg',
      product_category: dummy_categories[0]),

  // Pizza products
  Product(
      product_id: 4,
      product_name: 'Pepperoni Pizza',
      product_price: '15',
      product_desc: 'Classic pepperoni pizza with mozzarella cheese',
      product_img: 'assets/images/pepperoni_pizza.jpg',
      product_category: dummy_categories[1]),
  Product(
      product_id: 5,
      product_name: 'Vegetarian Pizza',
      product_price: '14',
      product_desc: 'Loaded with fresh vegetables and feta cheese',
      product_img: 'assets/images/vegetarian_pizza.jpg',
      product_category: dummy_categories[1]),
  Product(
      product_id: 6,
      product_name: 'BBQ Chicken Pizza',
      product_price: '16',
      product_desc: 'BBQ sauce, chicken, onions, and cilantro',
      product_img: 'assets/images/chicken_pizza.jpg',
      product_category: dummy_categories[1]),

  // Pasta products
  Product(
      product_id: 7,
      product_name: 'Spaghetti Bolognese',
      product_price: '13',
      product_desc: 'Traditional spaghetti with homemade bolognese sauce',
      product_img: 'assets/images/spaghetti_pasta.jpg',
      product_category: dummy_categories[2]),
  Product(
      product_id: 8,
      product_name: 'Penne Alfredo',
      product_price: '14',
      product_desc: 'Penne pasta with creamy Alfredo sauce',
      product_img: 'assets/images/alfredo_pasta.jpg',
      product_category: dummy_categories[2]),

  // Drink products
  Product(
      product_id: 9,
      product_name: 'Lemonade',
      product_price: '5',
      product_desc: 'Freshly squeezed lemonade',
      product_img: 'assets/images/lemonade.jpg',
      product_category: dummy_categories[3]),
  Product(
      product_id: 10,
      product_name: 'Iced Coffee',
      product_price: '4',
      product_desc: 'Cold brew iced coffee',
      product_img: 'assets/images/iced_coffe.jpg',
      product_category: dummy_categories[3]),

  // Sweet products
  Product(
      product_id: 11,
      product_name: 'Cheesecake',
      product_price: '6',
      product_desc: 'Classic cheesecake with a berry compote',
      product_img: 'assets/images/cheesecake.jpg',
      product_category: dummy_categories[4]),
  Product(
      product_id: 12,
      product_name: 'Chocolate Brownie',
      product_price: '4',
      product_desc: 'Rich chocolate brownie with walnuts',
      product_img: 'assets/images/brownie.jpg',
      product_category: dummy_categories[4]),
  Product(
      product_id: 13,
      product_name: 'Tiramisu',
      product_price: '7',
      product_desc: 'Italian tiramisu with espresso and mascarpone cheese',
      product_img: 'assets/images/tiramisu.jpg',
      product_category: dummy_categories[4]),
];

List<Product> fav_products = [];
