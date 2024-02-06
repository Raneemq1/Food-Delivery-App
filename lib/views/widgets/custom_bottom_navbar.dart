import 'package:flutter/material.dart';
import 'package:food_app/utils/appColor.dart';
import 'package:food_app/views/pages/favourite.dart';
import 'package:food_app/views/pages/home.dart';
import 'package:food_app/views/pages/profile.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Icon(Icons.shopping_basket),
          )
        ],
        centerTitle: true,
        title: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Current Location',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontSize: 16, color: AppColor.grey),
              ),
              SizedBox(
                height: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Palestine, Ramallah',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 18),
                  )
                ],
              )
            ]),
      ),
      drawer: Drawer(),
      bottomNavigationBar: NavigationBar(
        indicatorColor: AppColor.transpernt,
        selectedIndex: index,
        destinations: <Widget>[
          NavigationDestination(
              icon: Icon(Icons.home_filled),
              selectedIcon: Icon(Icons.home_filled, color: AppColor.orange),
              label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.favorite),
              selectedIcon: Icon(Icons.favorite, color: AppColor.orange),
              label: 'Favorite'),
          NavigationDestination(
              icon: Icon(Icons.person),
              selectedIcon: Icon(Icons.person, color: AppColor.orange),
              label: 'Profile'),
        ],
        onDestinationSelected: (value) {
          setState(() {
            index = value;
          });
        },
      ),
      body: <Widget>[
        Home(),
        Favourite(),
        Profile(),
      ][index],
    );
  }
}
