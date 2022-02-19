import 'package:flutter/material.dart';

class BuildListItems extends StatelessWidget {
  var iconTitle;

  IconData icon;

  BuildListItems({
    Key? key,
    required this.iconTitle,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      hoverColor:  
        Color(0xFFFDD8E3),
      leading: Icon(
        icon,
        color: Color(0xffFF769F),
      ),
      title: Text(
        iconTitle,
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xffFF769F)),
      ),
    );
  }
}
