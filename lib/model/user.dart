import 'package:food_app/utils/imgUrls.dart';

class User {
  final String user_id;
  final String user_name;
  final String user_email;
  final String user_phone;
  final String user_address;
  final String user_img;
  final int user_points;

  User({required this.user_id, required this.user_email,required this.user_name,
  required this.user_address,required this.user_phone,required this.user_img,
  required this.user_points});
}

User dummyUser = User(
  user_id: '1',
  user_email: 'john.doe@example.com',
  user_name: 'John Doe',
  user_address: '123 Main St, Anytown, AN 12345',
  user_phone: '+1234567890',
  user_img: ImageUrls.profile_img,
  user_points: 100
);
