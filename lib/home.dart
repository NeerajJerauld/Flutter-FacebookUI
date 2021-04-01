import 'package:facebook/Section/headerButtonSection.dart';
import 'package:facebook/Section/roomSection.dart';
import 'package:facebook/Section/statusSection.dart';
import 'package:facebook/Section/storyPostSection.dart';
import 'package:facebook/Section/storySection.dart';
import 'package:facebook/Widgets/appBarIcon.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Widget thinDivider = Divider(
    color: Colors.grey[300],
    thickness: 1,
  );
  Widget thickDivider = Divider(
    color: Colors.grey[300],
    thickness: 10,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Text(
            "facebook",
            style: TextStyle(
                color: Colors.blue[600],
                fontSize: 26,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            AppBarIcon(
              appIcon: Icon(Icons.search),
            ),
            AppBarIcon(
              appIcon: Icon(Icons.message),
            )
          ],
        ),
        body: ListView(
          children: [
            StatusSection(),
            thinDivider,
            HeaderButtonSection(),
            thickDivider,
            RoomSection(),
            thickDivider,
            Container(
              width: double.infinity,
              child: StorySection(),
            ),
            thickDivider,
            StoryPostSection(
              avatar: mammootty,
              avatarName: "Mammootty",
              publishedAt: "5h",
              showCheckTick: true,
              postMessage: "The Priest Releasing soon!!!",
              postContent: mammoottyPost,
              likeFavCountLabel: "9.5K",
              commentCountLabel: "10K",
              shareCountLabel: "5K",
            ),
            thickDivider,
            StoryPostSection(
              avatar: raj,
              avatarName: "Prithviraj Sukumaran",
              publishedAt: "10h",
              showCheckTick: true,
              postMessage: "On set for shooting",
              postContent: rajPost,
              likeFavCountLabel: "3.5K",
              commentCountLabel: "3K",
              shareCountLabel: "2K",
            ),
            thickDivider,
            StoryPostSection(
              avatar: dq,
              avatarName: "Dulquer Salmaan",
              publishedAt: "7h",
              showCheckTick: true,
              postMessage: "On set for shooting",
              postContent: dqPost,
              likeFavCountLabel: "34K",
              commentCountLabel: "12K",
              shareCountLabel: "4K",
            ),
            thickDivider,
            StoryPostSection(
              avatar: asif,
              avatarName: "Asif Ali",
              publishedAt: "1h",
              showCheckTick: true,
              postMessage: "How is my look as an Officer",
              postContent: asifPost,
              likeFavCountLabel: "50K",
              commentCountLabel: "30K",
              shareCountLabel: "10K",
            ),
            thickDivider,
            StoryPostSection(
              avatar: suraj,
              avatarName: "Suraj",
              publishedAt: "10h",
              showCheckTick: true,
              postMessage: "A different Look",
              postContent: surajPost,
              likeFavCountLabel: "5.5K",
              commentCountLabel: "3.2K",
              shareCountLabel: "4K",
            ),
            thickDivider,
            StoryPostSection(
              avatar: nivin,
              avatarName: "Nivin Pauly",
              publishedAt: "3h",
              showCheckTick: true,
              postMessage: "Thanks for the Award",
              postContent: nivinPost,
              likeFavCountLabel: "21K",
              commentCountLabel: "14K",
              shareCountLabel: "40K",
            ),
            thickDivider,
          ],
        ),
      ),
    );
  }
}
