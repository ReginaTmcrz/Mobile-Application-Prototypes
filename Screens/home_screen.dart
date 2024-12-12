import 'package:facebook_starter/constants.dart';
import 'package:facebook_starter/screens/notification_screen.dart';
import 'package:facebook_starter/screens/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/newsfeed_screen.dart';
import '../widgets/customfont.dart';

class HomeScreen extends StatefulWidget {

  final dynamic hasAppBar; 
  const HomeScreen({super.key, this.hasAppBar = false,}); 

 


  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex = 0; 
  final PageController _pageController = PageController(); 
  List<Color> iconColors = [Colors.grey, Colors.grey, Colors.grey]; 

 


  @override
  Widget build(BuildContext context) {
    return Scaffold(

  appBar: _selectedIndex == 1 
 ? AppBar( 
shadowColor: FB_TEXT_COLOR_WHITE, 
elevation: 2, 
title: Customfont( 
text: 'Notifications', 
fontSize: ScreenUtil().setSp(25), 
color: Colors.black, 
fontFamily: 'Klavika', 
), 
)

: AppBar( 
shadowColor: FB_PRIMARY, 
 elevation: 2, 
title: Customfont( 
text: 'Facebook', 
fontSize: ScreenUtil().setSp(25), 
color: FB_PRIMARY, 
fontFamily: 'Klavika', 
), 
), 
   // AppBar
      body: PageView(
        controller: _pageController,
        children: const <Widget>[
          NewsfeedScreen(),
          NotificationScreen(),
          ProfileScreen()
        ],
        onPageChanged: (page) {
          setState(
            () {
              _selectedIndex = page;
            },
          );
        },
      ), // PageView
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false, //selected item
        showUnselectedLabels: false, //unselected item
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'Notifications'),
               BottomNavigationBarItem(
              icon: Icon(Icons.person), label: 'Profile'),
        ],
        selectedItemColor: FB_PRIMARY,
        currentIndex: _selectedIndex,
      ),
      
    );
  }

void _onTappedBar(int index) { 
setState(() { 
_selectedIndex = index; 
iconColors = iconColors.map((color) => Colors.grey).toList(); 
iconColors[index] = Colors.blue; 
}); 
_pageController.jumpToPage(index); 
} 
} 
  
