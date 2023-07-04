import 'package:flutter/material.dart';
import 'package:thj_admin/common_widgets/custom_round_icon.dart';
import 'package:thj_admin/constants.dart';
import 'package:thj_admin/util/essentials.dart';
import 'package:thj_admin/views/home_directory/widget/admin_analysis_card.dart';
import 'package:thj_admin/views/societies/society_list.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  // List<Widget> screens = [Home()];
  // int activeIndex = 0;

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
              SliverGrid(
                delegate: SliverChildListDelegate(
                  [
                    getIconWithTitle(
                        Icons.family_restroom_sharp, "Societies", size,
                        onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SocietyList()));
                    }),
                    getIconWithTitle(Icons.person, "Residents", size,
                        onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SocietyList()));
                    }),
                    getIconWithTitle(Icons.shopping_cart, "Shops", size,
                        onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SocietyList()));
                    }),
                    getIconWithTitle(Icons.slideshow, "Advertisement", size,
                        onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SocietyList()));
                    }),
                    getIconWithTitle(Icons.poll_outlined, "Poll", size,
                        onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SocietyList()));
                    }),
                    getIconWithTitle(Icons.auto_graph, "Analysis", size,
                        onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => SocietyList()));
                    }),
                  ],
                  addAutomaticKeepAlives: true,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 15,
                    childAspectRatio: size.aspectRatio.toDouble() * 3),
              )
            ],
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // floatingActionButton: BottomNavWidget(),

      // bottomNavigationBar: BottomNavWidget(),
    );
  }

  Widget getIconWithTitle(IconData icon, String title, Size size,
      {Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: kDarkBlueColor),
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundIcon(
              icon: icon,
              iconSize: size.width * 0.075,
              iconColor: kLightColor,
              height: size.height * 0.1,
              width: size.width * 0.1,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: CustomText(text: title, size: 16),
            ),
          ],
        ),
      ),
    );
  }
}
