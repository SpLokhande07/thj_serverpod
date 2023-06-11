import 'package:flutter/material.dart';
import 'package:thj_flutter/util/essentials.dart';

class MyRooms extends StatefulWidget {
  const MyRooms({Key? key}) : super(key: key);

  @override
  State<MyRooms> createState() => _MyRoomsState();
}

class _MyRoomsState extends State<MyRooms> {
  Size? size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return SafeArea(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomText(text: "My Rooms"),
        const SizedBox(
          height: 20,
        ),
      ],
    ));
  }
}
