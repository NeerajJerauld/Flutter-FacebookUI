import 'package:facebook/Widgets/facebookAvatar.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

Widget OtherStoryFile({String friendName, String friendPost}) {
  return Stack(
    children: [
      Container(
        margin: EdgeInsets.only(
          top: 10,
          left: 5,
        ),
        height: 190,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.green,
          image: DecorationImage(
            image: AssetImage(friendPost),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: FlatButton(
          child: null,
          onPressed: () {
            print("ButtonCCCCLICKED");
          },
        ),
      ),
      Positioned(
        top: 20,
        left: 5,
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Colors.blue, width: 2),
          ),
          child: FacebookAvatar(
            avatarName: friendName,
            displayStatus: false,
          ),
        ),
      ),
    ],
  );
}
