import 'package:facebook_starter/widgets/customfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Notification extends StatelessWidget {
  const Notification(
      {super.key,
      required this.name,
      required this.post,
      required this.description});

// Suggested code may be subject to a license. Learn more: ~LicenseLog:2477340334.
  final String name;
  final String post;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(ScreenUtil().setSp(15)),
      child: Row(
        children: [
          Icon(
            Icons.person,
            size: ScreenUtil().setSp(50),
          ),
          SizedBox(
            width: ScreenUtil().setWidth(10),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Customfont(
                text: name,
                fontSize: ScreenUtil().setSp(20),
                color: Colors.black,
                fontWeight: FontWeight.w800,
              ),
              Customfont(
                text: 'Posted: $post',
                fontSize: ScreenUtil().setSp(13),
                color: Colors.black,
              ),
              Customfont(
                text: description,
                fontSize: ScreenUtil().setSp(12),
                color: Colors.black,
                fontStyle: FontStyle.italic,
              ),
            ],
          ),
          const Spacer(),
          const Icon(Icons.more_horiz),
        ],
      ),
    );
  }
}
