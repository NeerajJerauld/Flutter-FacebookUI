import 'package:flutter/material.dart';

class AppBarIcon extends StatelessWidget {
  final Icon appIcon;
  AppBarIcon({this.appIcon});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        shape: BoxShape.circle,
      ),
      child: IconButton(
        iconSize: 30,
        color: Colors.black,
        icon: this.appIcon,
        onPressed: () {
          print("Link to search");
        },
      ),
    );
  }
}
