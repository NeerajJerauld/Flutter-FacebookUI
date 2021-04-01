import 'package:facebook/Section/otherStoryFile.dart';
import 'package:facebook/Section/ownerStoryFile.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StorySection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 215,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          OwnerStoryFile(ownerName: dq),
          OtherStoryFile(friendName: mohanlal, friendPost: mohanlalPost),
          OtherStoryFile(friendName: mammootty, friendPost: mammoottyPost),
          OtherStoryFile(friendName: asif, friendPost: asifPost),
          OtherStoryFile(friendName: raj, friendPost: rajPost),
          OtherStoryFile(friendName: nivin, friendPost: nivinPost),
          // OtherStoryFile(friendName: kunchako, friendPost: kunchakoPost),
          OtherStoryFile(friendName: suraj, friendPost: surajPost),
        ],
      ),
    );
  }
}
