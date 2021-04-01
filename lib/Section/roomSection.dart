import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';
import 'package:facebook/Widgets/facebookAvatar.dart';

class RoomSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        padding: EdgeInsets.only(left: 10, top: 10, bottom: 10, right: 1),
        scrollDirection: Axis.horizontal,
        children: [
          facebookCreateRoom(),
          FacebookAvatar(
            avatarName: dq,
            displayStatus: true,
          ),
          FacebookAvatar(
            avatarName: mammootty,
            displayStatus: true,
          ),
          FacebookAvatar(
            avatarName: suraj,
            displayStatus: true,
          ),
          FacebookAvatar(
            avatarName: mohanlal,
            displayStatus: true,
          ),
          FacebookAvatar(
            avatarName: raj,
            displayStatus: true,
          ),
          FacebookAvatar(
            avatarName: kunchako,
            displayStatus: true,
          ),
          FacebookAvatar(
            avatarName: asif,
            displayStatus: true,
          ),
          FacebookAvatar(
            avatarName: nivin,
            displayStatus: true,
          ),
        ],
      ),
    );
  }

  Widget facebookCreateRoom() {
    return Container(
      padding: EdgeInsets.only(right: 8),
      child: OutlineButton.icon(
        shape: StadiumBorder(),
        borderSide: BorderSide(color: Colors.blue[100]),
        onPressed: () {
          print("Link for room");
        },
        icon: Icon(
          Icons.video_call,
          color: Colors.purple[300],
        ),
        label: Text(
          "Create",
          style: TextStyle(color: Colors.blue[300]),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Widget facebookAvatar({String avatarName}) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(avatarName),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 4,
          child: Container(
            height: 13,
            width: 13,
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
