import 'package:flutter/material.dart';

class HeaderButtonSection extends StatelessWidget {
  //Variable
  final IconData firstButtonIcon;
  final String firstButtonName;
  final Color firstButtonColor;
  final IconData secondButtonIcon;
  final String secondButtonName;
  final Color secondButtonColor;
  final IconData thirdButtonIcon;
  final String thirdButtonName;
  final Color thirdButtonColor;

  final Widget verticalDivider = VerticalDivider(
    thickness: 1,
    color: Colors.grey[300],
  );
  //Function
  Widget headerButton({
    void Function() buttonAction,
    IconData buttonIcon,
    Color buttonColor,
    String buttonText,
  }) {
    return FlatButton.icon(
      onPressed: buttonAction,
      icon: Icon(
        buttonIcon,
        color: buttonColor,
      ),
      label: Text(buttonText),
    );
  }

//Constructor
  HeaderButtonSection(
      {this.firstButtonIcon = Icons.photo_camera_front,
      this.firstButtonColor,
      this.firstButtonName = "Live",
      this.secondButtonIcon = Icons.photo_library,
      this.secondButtonColor,
      this.secondButtonName = "Photo",
      this.thirdButtonIcon = Icons.video_call,
      this.thirdButtonColor,
      this.thirdButtonName = "Room"});

//Build

  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          headerButton(
            buttonAction: () {
              print("GoingLive");
            },
            buttonIcon: firstButtonIcon,
            buttonColor:
                firstButtonColor != null ? firstButtonColor : Colors.red[300],
            buttonText: firstButtonName,
          ),
          verticalDivider,
          headerButton(
            buttonAction: () {
              print("Photo Pressed");
            },
            buttonIcon: secondButtonIcon,
            buttonColor: secondButtonColor != null
                ? secondButtonColor
                : Colors.green[300],
            buttonText: secondButtonName,
          ),
          verticalDivider,
          headerButton(
            buttonAction: () {
              print("Room Pressed");
            },
            buttonIcon: thirdButtonIcon,
            buttonColor: thirdButtonColor != null
                ? thirdButtonColor
                : Colors.purple[300],
            buttonText: thirdButtonName,
          ),
        ],
      ),
    );
  }
}
