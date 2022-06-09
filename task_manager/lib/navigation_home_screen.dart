import 'package:task_manager/app_theme.dart';
import 'package:task_manager/custom_drawer/drawer_user_controller.dart';
import 'package:task_manager/custom_drawer/home_drawer.dart';
import 'package:task_manager/design_course/home_design_course.dart';
import 'package:task_manager/feedback_screen.dart';
import 'package:task_manager/fitness_app/fitness_app_home_screen.dart';
import 'package:task_manager/help_screen.dart';
import 'package:task_manager/home_screen.dart';
import 'package:task_manager/hotel_booking/hotel_home_screen.dart';
import 'package:task_manager/invite_friend_screen.dart';
import 'package:flutter/material.dart';

class NavigationHomeScreen extends StatefulWidget {
  const NavigationHomeScreen({Key? key}) : super(key: key);

  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget? screenView;
  DrawerIndex? drawerIndex;

  @override
  void initState() {
    drawerIndex = DrawerIndex.HOME;
    screenView = const MyHomePage();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.nearlyWhite,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: AppTheme.nearlyWhite,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            onDrawerCall: (DrawerIndex drawerIndexdata) {
              changeIndex(drawerIndexdata);
              //callback from drawer for replace screen as user need with passing DrawerIndex(Enum index)
            },
            screenView: screenView,
            //we replace screen view as we need on navigate starting screens like MyHomePage, HelpScreen, FeedbackScreen, etc...
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      switch (drawerIndex) {
        case DrawerIndex.HOME:
          setState(() {
            screenView = const MyHomePage();
          });
          break;
        case DrawerIndex.Tasky:
          setState(() {
            screenView = FitnessAppHomeScreen();
          });
          break;
        case DrawerIndex.FeedBack:
          setState(() {
            screenView = DesignCourseHomeScreen();
          });
          break;
        case DrawerIndex.Testing:
          setState(() {
            screenView = HotelHomeScreen();
          });
          break;
        case DrawerIndex.Invite:
          setState(() {
            screenView = const HelpScreen();
          });
          break;
        case DrawerIndex.Share:
          setState(() {
            screenView = const FeedbackScreen();
          });
          break;
        case DrawerIndex.About:
          setState(() {
            screenView = const InviteFriend();
          });
          break;
        case DrawerIndex.Help:
          setState(() {
            //screenView = InviteFriend();
          });
          break;
        default:
          break;
      }
    }
  }
}
