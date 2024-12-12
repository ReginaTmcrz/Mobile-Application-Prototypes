import 'package:facebook_starter/widgets/customfont.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants.dart';
import '../widgets/notification.dart' as notif;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: ScreenUtil().screenWidth,
      child: const Column(
        children: [
          notif.Notification(
            name: 'Jennifer Pandacan',
            post: 'a new status',
            description: 'LF: Paskulayan date ASAP',
          ),
          Divider(),
          notif.Notification(
            name: 'Bianca Rosales',
            post: 'a new status',
            description: 'Ano meron kay Maris? ',
            
          ),
          Divider(),
        ],
      ),
    );
  }
}
