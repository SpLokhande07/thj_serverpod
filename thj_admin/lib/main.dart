import 'package:flutter/material.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:thj_admin/auth/login.dart';
import 'package:thj_admin/home_directory/home_mobile.dart';
import 'package:thj_client/thj_client.dart';

late SessionManager sessionManager;
late Client client;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  client = Client(
    'https://bad4-103-179-3-214.ngrok-free.app/',
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();
  sessionManager = SessionManager(
    caller: client.modules.auth,
  );
  await sessionManager.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Serverpod Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: sessionManager.isSignedIn ? const MobileHome() : const THJLogin(),
    );
  }
}
