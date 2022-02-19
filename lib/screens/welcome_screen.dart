import 'package:ahmed_ui/screens/admin_panel_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
// import 'package:get/get_core/get_core.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Spacer(),
        Center(
          child: Container(
            height: 120.0,
            width: 120.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/ewallet.png'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AdminPanelScreen()),
            );
          },
          child: Text(
            'Welcome Back To Your Wallet',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        Spacer(),
      ],
    ));
  }
}
