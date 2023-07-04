import 'package:flutter/material.dart';
import 'package:thj_admin/util/essentials.dart';

class RegisterSociety extends StatefulWidget {
  const RegisterSociety({Key? key}) : super(key: key);

  @override
  State<RegisterSociety> createState() => _RegisterSocietyState();
}

class _RegisterSocietyState extends State<RegisterSociety> {
  TextEditingController txtSocName = TextEditingController();
  TextEditingController txtSocRegNo = TextEditingController();
  TextEditingController txtSocTotalBlock = TextEditingController();
  TextEditingController txtSocTotalRoom = TextEditingController();
  TextEditingController txtSocTotalShop = TextEditingController();
  List<TextEditingController> txtSocMaxFloor = [];
  List<TextEditingController> txtSocMaxRoom = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        height: MediaQuery.sizeOf(context).height * 0.9,
        width: MediaQuery.sizeOf(context).width * 0.8,
        child: Form(
          child: Stepper(
            steps: [
              Step(
                title: CustomText(text: "Society Details"),
                content: const Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
