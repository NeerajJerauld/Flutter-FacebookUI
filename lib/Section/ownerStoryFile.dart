import 'package:flutter/material.dart';

Widget OwnerStoryFile({String ownerName}) {
  return Stack(
    children: [
      Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            height: 120,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                image: AssetImage(ownerName),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: FlatButton(
              child: null,
              onPressed: () {
                print("ButtonCCCCLICKED");
              },
            ),
          ),
          Container(
            height: 70,
            width: 100,
            margin: EdgeInsets.only(bottom: 10, left: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: FlatButton(
              child: Text(
                "Create a \nStory",
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              onPressed: () {
                print("TEEEEEXT CLICKED");
              },
            ),
          )
        ],
      ),
      Positioned(
        top: 110,
        left: 45,
        height: 35,
        width: 35,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue[300],
            shape: BoxShape.circle,
            border: Border.all(color: Colors.white, width: 2),
          ),
          child: IconButton(
            padding: EdgeInsets.all(0),
            iconSize: 30,
            color: Colors.white,
            icon: Icon(Icons.add),
            onPressed: () {
              print("Link to search");
            },
          ),
        ),
      ),
    ],
  );
}
