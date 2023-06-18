import 'package:flutter/material.dart';
import 'package:thj_admin/util/essentials.dart';
import 'package:thj_admin/views/home_directory/widget/admin_analysis_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                SizedBox(
                  width: size.width,
                  height: size.height * 0.05,
                  child: Center(
                    child: CustomText(text: "Admin Analysis", size: 24),
                  ),
                ),
                const AdminAnalysisCard(),
                SizedBox(
                  height: size.height * 0.05,
                ),
              ])),
            ],
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: BottomNavWidget(),

      // bottomNavigationBar: BottomNavWidget(),
    );
  }
}
