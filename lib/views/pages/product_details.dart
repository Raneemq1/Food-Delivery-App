import 'package:flutter/material.dart';
import 'package:food_app/model/product.dart';
import 'package:food_app/model/product_spec.dart';
import 'package:food_app/utils/appColor.dart';

class ProductDetails extends StatefulWidget {
  final Product product;
  const ProductDetails({required this.product});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            InkWell(
                onTap: () {
                  setState(() {
                    if (fav_products.contains(widget.product)) {
                      fav_products.remove(widget.product);
                    } else {
                      fav_products.add(widget.product);
                    }
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(fav_products.contains(widget.product)
                      ? Icons.favorite
                      : Icons.favorite_border_outlined),
                ))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  widget.product.product_img,
                  height: 300,
                  fit: BoxFit.fill,
                  width: 300,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Text(
                widget.product.product_name,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 2,
              ),
              Text(widget.product.product_category.cat_name,
                  style: TextStyle(fontSize: 18, color: AppColor.grey)),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: product_specs.map((product) {
                  return Column(
                    children: [
                      Text(
                        product.title,
                        style: TextStyle(
                            color: AppColor.grey, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        product.value,
                        style: TextStyle(
                            color: AppColor.black, fontWeight: FontWeight.w500),
                      ),
                      //check this
                      Divider(
                        height: 10,
                        color: AppColor.black,
                      ),
                    ],
                  );
                }).toList(),
              ),
              SizedBox(
                height: 30,
              ),
              Text(widget.product.product_desc),
              Spacer(),
              Divider(
                color: AppColor.grey.withOpacity(0.2),
              ),
              Row(
                children: [
                  Expanded(
                      child: Center(
                          child: Text('${widget.product.product_price}\$',
                              style: TextStyle(
                                  color: AppColor.orange,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)))),
                  Expanded(
                      flex: 2,
                      child: SizedBox(
                        height: 45,
                        child: ElevatedButton(
                          child: Text(
                            'Checkout',
                            style:
                                TextStyle(color: AppColor.white, fontSize: 16),
                          ),
                          onPressed: () {},
                          style: ButtonStyle(
                              backgroundColor: MaterialStatePropertyAll<Color>(
                                  AppColor.orange)),
                        ),
                      ))
                ],
              )
            ],
          ),
        ));
  }
}
