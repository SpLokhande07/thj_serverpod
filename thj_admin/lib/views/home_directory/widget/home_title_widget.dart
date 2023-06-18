import 'package:flutter/material.dart';
import 'package:thj_admin/home_directory/widget/admin_analysis_card.dart';
import 'package:thj_admin/util/essentials.dart';

class HomeTitleWidget extends StatelessWidget {
  const HomeTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SliverList(
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
    ]));
  }
}
