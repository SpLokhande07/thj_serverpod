import 'package:flutter/material.dart';
import 'package:thj_flutter/my_rooms_directory/my_room.dart';

import '../util/bottom_nav_widget.dart';
import 'pages/home.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  List<Widget> screens = [Home(), MyRooms()];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: screens[activeIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomNavWidget(),

      // bottomNavigationBar: BottomNavWidget(),
    );
  }
}
