import 'package:flutter/material.dart';

import '../responsiveWidget/responsive_layout.dart';
import 'home_mobile.dart';

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
