import 'package:facebook/Widgets/facebookAvatar.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
        leading: FacebookAvatar(
          avatarName: dq,
          displayStatus: false,
        ),
        title: TextField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            hintText: "What's on your mind?",
            hintStyle: TextStyle(color: Colors.black),
            //enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
          ),
        ));
  }
}
