import 'package:facebook/Section/headerButtonSection.dart';
import 'package:facebook/Widgets/facebookAvatar.dart';
import 'package:facebook/assets.dart';
import 'package:flutter/material.dart';

class StoryPostSection extends StatelessWidget {
  final String avatar;
  final String avatarName;
  final String publishedAt;
  final bool showCheckTick;
  final String postMessage;
  final String postContent;
  final String likeFavCountLabel;
  final String commentCountLabel;
  final String shareCountLabel;
  StoryPostSection({
    this.avatar,
    this.avatarName,
    this.publishedAt,
    this.showCheckTick = false,
    this.postMessage,
    this.postContent,
    this.likeFavCountLabel,
    this.commentCountLabel,
    this.shareCountLabel,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          headerPostSection(),
          titlePostCard(),
          SizedBox(
            height: 10,
          ),
          postCardContent(),
          footerPostCard(),
          Divider(
            color: Colors.grey[300],
            thickness: 1,
          ),
          HeaderButtonSection(
            firstButtonIcon: Icons.thumb_up_outlined,
            firstButtonColor: Colors.grey[700],
            firstButtonName: "Like",
            secondButtonIcon: Icons.chat_bubble_outline,
            secondButtonColor: Colors.grey[700],
            secondButtonName: "Comment",
            thirdButtonIcon: Icons.share_outlined,
            thirdButtonColor: Colors.grey[700],
            thirdButtonName: "Share",
          ),
        ],
      ),
    );
  }

  Widget footerPostCard() {
    //background Container
    return Container(
      //First row inside the background container which consists of 2 container
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //first container inside first row
          Container(
            //This row contains 3 items Like,fav, likeCount
            padding: EdgeInsets.only(left: 10),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                likeFavFunction(
                    bgIconColor: Colors.white,
                    bgIcon: Icons.thumb_up_sharp,
                    bgColor: Colors.blueAccent),
                likeFavFunction(
                    bgIconColor: Colors.white,
                    bgIcon: Icons.favorite,
                    bgColor: Colors.redAccent),
                SizedBox(
                  width: 5,
                ),
                displayText(likeFavCountLabel == null ? "" : likeFavCountLabel),
              ],
            ),
          ),
          //Second container inside first row
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Row(
              //This row contains 4 items commentCount,Comment,ShareCount,Share
              children: [
                displayText(commentCountLabel),
                SizedBox(
                  width: 5,
                ),
                displayText("Comments"),
                SizedBox(
                  width: 10,
                ),
                displayText(shareCountLabel),
                SizedBox(
                  width: 5,
                ),
                displayText("Shares"),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget displayText(String label) {
    return Text(
      label,
      style: TextStyle(color: Colors.grey[700]),
    );
  }

  Widget likeFavFunction({IconData bgIcon, Color bgIconColor, Color bgColor}) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        shape: BoxShape.circle,
      ),
      child: Icon(
        bgIcon,
        color: bgIconColor,
        size: 20,
      ),
    );
  }

  Widget postCardContent() {
    return Container(
      child: Image.asset(postContent),
    );
  }

  Widget titlePostCard() {
    return Container(
      alignment: Alignment.center,
      child: Text(
        postMessage == null ? "" : postMessage,
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Widget headerPostSection() {
    return ListTile(
      leading: FacebookAvatar(
        avatarName: avatar,
        displayStatus: false,
      ),
      title: Row(
        children: [
          Text(
            avatarName,
            style: TextStyle(
                color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            width: 5,
          ),
          showCheckTick
              ? Container(
                  height: 15,
                  width: 15,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 10,
                  ),
                )
              : SizedBox(),
        ],
      ),
      subtitle: Row(
        children: [
          Text(publishedAt == null ? "" : publishedAt),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
          )
        ],
      ),
      trailing: IconButton(
        icon: Icon(
          Icons.more_horiz,
          color: Colors.grey[700],
        ),
        onPressed: () {
          print("Open the tab");
        },
      ),
    );
  }
}
