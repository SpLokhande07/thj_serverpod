import 'package:flutter/material.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
import 'package:thj_flutter/global.dart';
import 'package:thj_flutter/main.dart';
import 'package:thj_flutter/responsiveWidget/responsive_layout.dart';

class THJLogin extends StatefulWidget {
  const THJLogin({Key? key}) : super(key: key);

  @override
  State<THJLogin> createState() => _THJLoginState();
}

class _THJLoginState extends State<THJLogin> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Container(
        height: Global.height * 0.8,
        width: Global.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SignInWithGoogleButton(
              caller: client.modules.auth,
              serverClientId: Global.googleServerClientId,
              redirectUri: Uri.parse('http://localhost:8082/googlesignin'),
            ),
          ],
        ),
      ),
    );
  }
}
