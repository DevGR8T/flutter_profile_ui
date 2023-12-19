import 'package:flutter/material.dart';
import 'package:profile_ui/details.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 70,
                backgroundImage: AssetImage('images/dwayne.jpg'),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Dwayne Johnson',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif'),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                'john@gmail.com',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15),
              Container(
                alignment: Alignment.center,
                height: 50,
                width: 270,
                decoration: BoxDecoration(
                    color: Colors.yellow[600],
                    borderRadius: BorderRadius.circular(30)),
                child: Text(
                  'Upgrade to Premium',
                  style: TextStyle(
                      fontFamily: 'Serif',
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                      color: Colors.grey[800]),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Details(
                  logo: Icons.shopping_bag_outlined,
                  text: '   Your order history',
                  arrowshow: true),
              Details(
                  logo: Icons.help_outline_outlined,
                  text: '   Help and Support',
                  arrowshow: true),
              Details(
                  logo: Icons.card_giftcard_outlined,
                  text: '   Load gift voucher',
                  arrowshow: true),
              Details(logo: Icons.logout, text: '   Logout', arrowshow: false),
            ],
          ),
        ),
      ),
    );
  }
}
