import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:serverpod_auth_shared_flutter/serverpod_auth_shared_flutter.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';
import 'package:thj_admin/auth/login.dart';
import 'package:thj_admin/views/home_directory/home_mobile.dart';
import 'package:thj_client/thj_client.dart';

late SessionManager sessionManager;
late Client client;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  client = Client(
    'https://80e5-2402-3a80-4174-9747-6d0b-cc6d-cfd9-7c78.ngrok-free.app/',
    authenticationKeyManager: FlutterAuthenticationKeyManager(),
  )..connectivityMonitor = FlutterConnectivityMonitor();
  sessionManager = SessionManager(
    caller: client.modules.auth,
  );
  await sessionManager.initialize();
  runApp(const ProviderScope(child: MyApp()));
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
