import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart' as auth_ui;
import 'package:openci_app/firebase_options.dart';
import 'package:openci_app/src/features/release/presentation/prepare_release_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final providers = [
    auth_ui.EmailAuthProvider(),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute:
          FirebaseAuth.instance.currentUser == null ? '/sign-in' : '/release',
      routes: {
        '/sign-in': (context) {
          return auth_ui.SignInScreen(
            providers: providers,
            actions: [
              auth_ui.AuthStateChangeAction<auth_ui.SignedIn>((context, state) {
                Navigator.pushReplacementNamed(context, '/release');
              }),
            ],
          );
        },
        '/release': (context) {
          return const PrepareReleasePage();
        },
      },
    );
  }
}
