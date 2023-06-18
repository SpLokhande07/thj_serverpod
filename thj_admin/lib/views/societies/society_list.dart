import 'package:flutter/material.dart';
import 'package:thj_admin/util/essentials.dart';

class SocietyList extends StatefulWidget {
  const SocietyList({Key? key}) : super(key: key);

  @override
  State<SocietyList> createState() => _SocietyListState();
}

class _SocietyListState extends State<SocietyList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      shrinkWrap: true,
      slivers: [
        SliverAppBar(
          title: CustomText(text: "Registered Society"),
        ),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((context, index) {}, childCount: 0))
      ],
    ));
  }
}
