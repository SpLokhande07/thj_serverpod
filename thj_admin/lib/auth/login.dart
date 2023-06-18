import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';
import 'package:thj_admin/global.dart';
import 'package:thj_admin/main.dart';
import 'package:thj_admin/responsiveWidget/responsive_layout.dart';
import 'package:thj_admin/views/home_directory/home_page.dart';

class THJLogin extends StatefulWidget {
  const THJLogin({Key? key}) : super(key: key);

  @override
  State<THJLogin> createState() => _THJLoginState();
}

class _THJLoginState extends State<THJLogin> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      extraSmall: (context, child) => SizedBox(
        height: Global.height * 0.8,
        width: Global.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            SignInWithGoogleButton(
              caller: client.modules.auth,
              serverClientId:
                  // Platform.isAndroid
                  //     ? '220164212378-q4ja58hpmsml222th110ct5k18rhvuls.apps.googleusercontent.com'
                  //     : Platform.isIOS
                  //         ?
                  // "220164212378-ej6gjkvs3v5d32muctikn258v2vv88m5.apps.googleusercontent.com"
                  //         :
                  "220164212378-2v2is4dgvm1iaijg35virt0sjgvlfo4n.apps.googleusercontent.com",
              onSignedIn: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => const HomePage()));
              },
              onFailure: () {
                if (kDebugMode) {
                  print("Failed");
                }
              },
              clientId: Platform.isAndroid
                  ? "220164212378-plvv7jeuciaogb5qm7od7b364vp9hemu.apps.googleusercontent.com"
                  : "220164212378-q306f4cqh7joife4afuj0065pu8o7vhj.apps.googleusercontent.com",
              redirectUri: Uri.parse(
                  'https://f66d-103-179-3-215.ngrok-free.app/googlesignin'),
            ),
          ],
        ),
      ),
    );
  }
}
// GoogleService-Info.plist file not found and clientId was not provided programmatically.
