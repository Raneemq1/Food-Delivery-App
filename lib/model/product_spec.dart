class ProductSpec {
  final String title;
  final String value;

  ProductSpec({required this.title, required this.value});
}

List<ProductSpec> product_specs = [
  ProductSpec(title: 'Size', value: 'Medium'),
   ProductSpec(title: 'Calories', value: '150'),
    ProductSpec(title: 'Cooking', value: '5-10 Min'),
];
