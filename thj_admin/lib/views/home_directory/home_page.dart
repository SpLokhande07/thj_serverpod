import 'package:flutter/material.dart';
import 'package:thj_admin/responsiveWidget/responsive_layout.dart';
import 'package:thj_admin/views/home_directory/home_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      extraSmall: (context, child) {
        return const MobileHome();
      },
      small: (context, child) {
        return const MobileHome();
      },
    );
  }
}
