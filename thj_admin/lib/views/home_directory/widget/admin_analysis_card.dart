import 'package:flutter/material.dart';
import 'package:thj_admin/constants.dart';
import 'package:thj_admin/util/essentials.dart';

class AdminAnalysisCard extends StatelessWidget {
  const AdminAnalysisCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
      child: Container(
        width: size.width,
        height: size.height * 0.15,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: kDarkBlueColor),
          // color: kPrimaryColor.withOpacity(0.7),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              analysisTitle("Clients", "124"),
              SizedBox(
                width: size.width * 0.02,
                height: size.height * 0.1,
                child: VerticalDivider(
                  color: kPrimaryColor,
                  thickness: 2,
                  width: size.width * 0.02,
                ),
              ),
              analysisTitle("Revenue", "\$124"),
            ],
          ),
        ),
      ),
    );
  }

  analysisTitle(String title, String value) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomText(text: title, size: 24),
        CustomText(text: value, size: 24),
      ],
    );
  }
}
