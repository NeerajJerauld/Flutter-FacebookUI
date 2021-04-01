import 'package:flutter/material.dart';

class FacebookAvatar extends StatelessWidget {
  final String avatarName;
  final bool displayStatus;
  FacebookAvatar({@required this.avatarName, @required this.displayStatus});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 8, right: 8),
          child: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage(avatarName),
          ),
        ),
        displayStatus
            ? Positioned(
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
              )
            : SizedBox(),
      ],
    );
  }
}
