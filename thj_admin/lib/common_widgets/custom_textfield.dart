import 'package:flutter/material.dart';
import 'package:thj_admin/constants.dart';

class CustomTextField extends StatefulWidget {
  TextEditingController controller;
  TextInputType? keyboardType;
  ValueChanged<String>? onChanged;
  GestureTapCallback? onTap;
  CustomTextField({Key? key, required this.controller}) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {},
      onChanged: (val) {},
      decoration: const InputDecoration(
          border:
              OutlineInputBorder(borderSide: BorderSide(color: kDarkBlueColor)),
          errorBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.red)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: kBlueColor))),
    );
  }
}
