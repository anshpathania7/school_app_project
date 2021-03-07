import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:school_app_project/Screens/HomeScreen.dart';
import 'package:school_app_project/Screens/MyAccountScreen.dart';
import 'package:school_app_project/Screens/NoticeBoard.dart';
import 'package:school_app_project/Screens/SearchScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller =
        new PersistentTabController(initialIndex: 0);
    return PersistentTabView(
      context,
      controller: _controller,
      screens: [HomeScreen(), SearchScreen(), NoticeBoard(), MyAccountScreen()],
      items: [
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.black,
          ),
          title: "Home",
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.search,
            color: Colors.black,
          ),
          title: "Search",
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.notifications,
            color: Colors.black,
          ),
          title: "Notice",
        ),
        PersistentBottomNavBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
          title: "Account",
        )
      ],
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(100.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
      navBarStyle: NavBarStyle.style12,
    );
  }
}
