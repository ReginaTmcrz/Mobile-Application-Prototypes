import 'package:facebook_starter/constants.dart';
import 'package:facebook_starter/widgets/customfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String Date;
  final int numberOfLikes;
  final String postImage;

  const NewsfeedCard(
      {super.key,
      required this.userName,
      required this.postContent,
      required this.Date,
      required this.numberOfLikes,
      required this.postImage});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(ScreenUtil().setSp(10)),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtil().setSp(10)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // User Info Section

            Row(
              children: [
                Icon(Icons.person, size: ScreenUtil().setSp(50)),
                SizedBox(width: ScreenUtil().setSp(10)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Customfont(
                      text: userName,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: ScreenUtil().setSp(5)),
                    Customfont(
                      text: Date,
                      fontSize: ScreenUtil().setSp(15),
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setSp(10)),

            // Post Content Section

            Customfont(
              text: postContent,
              fontSize: ScreenUtil().setSp(15),
              color: Colors.black,
            ),
            SizedBox(height: ScreenUtil().setSp(10)),

// Image Placeholder Section

            SizedBox(height: ScreenUtil().setSp(6)),
            Customfont(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ),

            
            SizedBox(height: ScreenUtil().setSp(10)),
            Container(
                height: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.asset(postImage, fit: BoxFit.cover)),
// Like, Comment, and Share Buttons

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.thumb_up, color: FB_DARK_PRIMARY),
                  label: Customfont(
                    text: numberOfLikes.toString(),
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.comment, color: FB_DARK_PRIMARY),
                  label: Customfont(
                    text: 'Comment',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.share, color: FB_DARK_PRIMARY),
                  label: Customfont(
                    text: 'Share',
                    fontSize: ScreenUtil().setSp(12),
                    color: FB_DARK_PRIMARY,
                  ),
                ),
              ],
            ),
            SizedBox(height: ScreenUtil().setSp(10)),

            // Comment Box Section

            Row(
              children: [
                Icon(Icons.person, size: ScreenUtil().setSp(30)),
                SizedBox(width: ScreenUtil().setSp(10)),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtil().setSp(10),
                        horizontal: ScreenUtil().setSp(15)),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius:
                          BorderRadius.circular(ScreenUtil().setSp(15)),
                    ),
                    child: const TextField(
                      decoration: InputDecoration.collapsed(
                        hintText: 'Write a comment...',
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: ScreenUtil().setSp(10)),

            Customfont(
              text: 'View comments',
              fontSize: ScreenUtil().setSp(15),
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: ScreenUtil().setSp(5)),
          ],
        ),
      ),
    );
  }
}
