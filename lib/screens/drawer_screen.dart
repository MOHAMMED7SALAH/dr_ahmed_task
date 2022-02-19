import 'package:ahmed_ui/componants/buildListItems.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 48,
            ),
            BuildListItems(
              iconTitle: 'Dashboard',
              icon: Icons.home,
            ),
            SizedBox(height: 12),
            BuildListItems(
              iconTitle: 'Wallet',
              icon: Icons.wallet_membership_rounded,
            ),
            SizedBox(height: 12),
            BuildListItems(
              iconTitle: 'Transaction',
              icon: Icons.money_rounded,
            ),
            SizedBox(height: 12),
            BuildListItems(
              iconTitle: 'Profile',
              icon: Icons.person,
            ),
            SizedBox(height: 12),
            BuildListItems(
              iconTitle: 'Payment',
              icon: Icons.payments,
            ),
            SizedBox(height: 36),
            Divider(color: Color(0xFFFDD8E3)),
            SizedBox(height: 36),
            BuildListItems(
              iconTitle: 'Setting',
              icon: Icons.settings,
            ),
            SizedBox(height: 12),
            BuildListItems(
              iconTitle: 'Log Out',
              icon: Icons.exit_to_app_rounded,
            ),
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
