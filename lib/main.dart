import 'package:flutter/material.dart';
import 'package:food_app/utils/theme.dart';
import 'package:food_app/views/pages/home.dart';
import 'package:food_app/views/pages/favourite.dart';
import 'package:food_app/views/pages/profile.dart';
import 'package:food_app/views/widgets/custom_bottom_navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: AppTheme.ligtTheme,
      
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 
  @override
  Widget build(BuildContext context) {
    return CustomBottomNavBar();
  }
}



/**
 *   
 *  NavigationDestination(icon:Badge(label:Text('2'),child: Icon(Icons.notification_important)) , label:'Notifications' ),
 * 
 *    List<Map<String, dynamic>> categoriges = [
    {
      'title': 'Burger',
      'icon': Icons.holiday_village,
    },
    {
      'title': 'pasta',
      'icon': Icons.food_bank,
    },
    {
      'title': 'drink',
      'icon': Icons.no_drinks,
    },
    {
      'title': 'pizza',
      'icon': Icons.local_pizza,
    }
  ];

  List<Map<String, String>> products = [
    {
      'image':
          'https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg',
      'title': 'burger'
    },
    {
      'image':
          'https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg',
      'title': 'pasta'
    },
    {
      'image':
          'https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg',
      'title': 'drink'
    },
    {
      'image':
          'https://www.foodandwine.com/thmb/DI29Houjc_ccAtFKly0BbVsusHc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/crispy-comte-cheesburgers-FT-RECIPE0921-6166c6552b7148e8a8561f7765ddf20b.jpg',
      'title': 'pizza'
    },
  ];
 */