import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_app/model/categoty.dart';
import 'package:food_app/model/product.dart';
import 'package:food_app/views/pages/product_details.dart';
import 'package:food_app/utils/appColor.dart';

class Home extends StatefulWidget {
  Home();

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selected = -1;
  late List<Product> filtered_products;

  @override
  void initState() {
    super.initState();
    filtered_products = dummy_products;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                    fit: BoxFit.fill,
                    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/delicious-food-banner-template-design-cd3994e39458960f4f33e73b8c60edb9_screen.jpg?ts=1645769305')),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey.withOpacity(0.3),
                    ),
                  ),
                  errorBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  prefixIcon: Icon(Icons.search),
                  labelText: 'Search for a food'),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 100,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: dummy_categories.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          if (selected == dummy_products[index].product_id) {
                            selected = -1;
                            filtered_products = dummy_products;
                          } else {
                            selected = dummy_products[index].product_id;

                            if (selected > -1) {
                              filtered_products = dummy_products
                                  .where((product) =>
                                      product.product_category.cat_id ==
                                      selected)
                                  .toList();
                            }
                          }
                        });
                      },
                      child: SizedBox(
                        width: 90,
                        child: Card(
                          color: dummy_products[index].product_id == selected
                              ? AppColor.orange
                              : AppColor.white,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Column(children: [
                              Image.asset(dummy_categories[index].cat_img,
                                  color: dummy_products[index].product_id ==
                                          selected
                                      ? AppColor.white
                                      : AppColor.black,
                                  height: 50,
                                  fit: BoxFit.fill),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                dummy_categories[index].cat_name,
                                style: TextStyle(
                                  color: dummy_products[index].product_id ==
                                          selected
                                      ? AppColor.white
                                      : AppColor.black,
                                ),
                              )
                            ]),
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            SizedBox(
              height: 20,
            ),
            filtered_products.isEmpty
                ? Center(
                    child: Text('no Products yet'),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: filtered_products.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 10,
                        crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(
                                  builder: (context) => ProductDetails(
                                        product: filtered_products[index],
                                      )))
                              .then((value) => setState(() {}));
                        },
                        child: Card(
                          child: Stack(alignment: Alignment.center, children: [
                            Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      filtered_products[index].product_img,
                                      height: 120,
                                      width: 140,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    filtered_products[index].product_name,
                                  ),
                                  SizedBox(
                                    height: 2,
                                  ),
                                  Text(
                                    '${filtered_products[index].product_price}\$',
                                    style: TextStyle(color: AppColor.orange),
                                  ),
                                ],
                              ),
                            ),
                            Positioned(
                              top: 2,
                              right: -2,
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (fav_products
                                          .contains(filtered_products[index])) {
                                        fav_products
                                            .remove(filtered_products[index]);
                                      } else {
                                        fav_products
                                            .add(filtered_products[index]);
                                      }
                                    });
                                  },
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: AppColor.transpernt,
                                        borderRadius:
                                            BorderRadius.circular(18)),
                                    child: Icon(
                                      fav_products.contains(
                                              filtered_products[index])
                                          ? Icons.favorite
                                          : Icons.favorite_border_outlined,
                                      color: AppColor.orange,
                                    ),
                                  )),
                            )
                          ]),
                        ),
                      );
                    })
          ],
        ),
      ),
    );
  }
}
