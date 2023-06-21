import 'package:flutter/material.dart';
import 'package:thj_admin/util/essentials.dart';

class RegisterSociety extends StatefulWidget {
  const RegisterSociety({Key? key}) : super(key: key);

  @override
  State<RegisterSociety> createState() => _RegisterSocietyState();
}

class _RegisterSocietyState extends State<RegisterSociety> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: CustomText(
              text: "Register Society",
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([]))
        ],
      )),
    );
  }
}
