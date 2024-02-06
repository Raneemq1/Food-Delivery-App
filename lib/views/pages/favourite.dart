import 'package:flutter/material.dart';
import 'package:food_app/model/product.dart';
import 'package:food_app/utils/appColor.dart';
import 'package:food_app/views/pages/product_details.dart';

class Favourite extends StatefulWidget {
  const Favourite();

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return fav_products.isEmpty
        ? Center(child: Text('No favorite products yet'))
        : Padding(
            padding: const EdgeInsets.all(12.0),
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: fav_products.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(
                              builder: (_) =>
                                  ProductDetails(product: fav_products[index])))
                          .then((value) => setState(() {}));
                    },
                    child: Card(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                child: Image.asset(
                                    fav_products[index].product_img,
                                    width: 100,
                                    height: 90,
                                    fit: BoxFit.fitWidth)),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  fav_products![index].product_name,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  '${fav_products![index].product_price}\$',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(color: AppColor.orange),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      fav_products.remove(fav_products[index]);
                                    });
                                  },
                                  child: Icon(
                                    Icons.favorite,
                                    color: AppColor.orange,
                                  )),
                            )
                          ]),
                    ),
                  ),
                );
              },
            ),
          );
  }
}



/*
ListTile(
              leading:Image.asset(fav_products[index].product_img),
               title:Text(fav_products[index].product_name),
               subtitle:Text(fav_products[index].product_price),
               trailing:Icon(Icons.favorite,color:AppColor.orange),
              ) 
              
*/

