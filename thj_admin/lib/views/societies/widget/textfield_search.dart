import 'package:flutter/material.dart';
import 'package:thj_admin/common_widgets/custom_textfield.dart';

class SearchTextField extends StatefulWidget {
  TextEditingController controller;
  SearchTextField({Key? key, required this.controller}) : super(key: key);

  @override
  State<SearchTextField> createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(controller: widget.controller);
  }
}
