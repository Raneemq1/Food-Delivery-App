import 'package:flutter/material.dart';
import 'package:food_app/model/user.dart';
import 'package:food_app/utils/appColor.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    //debugPrint(dummyUser.user_img);
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 120, right: 25, left: 25),
            child: Container(
              padding: EdgeInsets.all(size.height * 0.05),
              width: size.width,
              height: size.height * 0.4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                      width: 0.2, color: AppColor.grey.withOpacity(0.4)),
                  color: AppColor.bgColor),
              child: Column(
                children: [
                  Center(
                      child: Text(
                    dummyUser.user_name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                  )),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Icon(Icons.house),
                      SizedBox(
                        width: 10,
                      ),
                      Text(dummyUser.user_address)
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Icon(Icons.phone),
                      SizedBox(
                        width: 10,
                      ),
                      Text(dummyUser.user_phone)
                    ],
                  ),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.monetization_on),
                      SizedBox(
                        width: 10,
                      ),
                      Text(dummyUser.user_points.toString())
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 10,
            right: size.width * .35,
            child: Center(
                child: CircleAvatar(
              radius: 60,
              backgroundImage: NetworkImage(dummyUser.user_img),
            )),
          ),
        ],
      ),
    );
  }
}
/*
Column(
          children: [
            Row(
              children: [
                Icon(Icons.house),
                SizedBox(
                  width: 10,
                ),
                Text(dummyUser.user_address)
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(Icons.phone),
                SizedBox(
                  width: 10,
                ),
                Text(dummyUser.user_phone)
              ],
            ),
          ],
        )
        */