//import 'dart:js';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:smartnotes/views/login_view.dart';
import 'package:smartnotes/views/register_view.dart';
import 'firebase_options.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          primarySwatch: Colors.blueGrey,
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.white),
      home: const HomePage(),
      routes: {
        '/login': (context) => const LoginView(),
        '/register': (context) => const RegisterView()
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            final user = FirebaseAuth.instance.currentUser;

            //   final emailVerified = user?.emailVerified ?? false;

            // if (user?.emailVerified ?? false) {
            //   return const Text("Done",
            //       style: TextStyle(
            //         color: Colors.black, // Set text color to white
            //         fontSize: 18.0, // Adjust text size as needed
            //       ));
            // } else {
            //   return const VerifyEmailView();
            // }
            return const LoginView();

          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}

class VerifyEmailView extends StatefulWidget {
  const VerifyEmailView({super.key});

  @override
  State<VerifyEmailView> createState() => _VerifyEmailViewState();
}

class _VerifyEmailViewState extends State<VerifyEmailView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Verify Email")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Please Verify your email address",
              style: TextStyle(
                color: Colors.white, // Set text color to white
                fontSize: 16.0, // Adjust text size as needed
              )),
          TextButton(
            onPressed: () async {
              final user = FirebaseAuth.instance.currentUser;
              await user?.sendEmailVerification();
            },
            child: const Text("Email Verification Sent",
                style: TextStyle(color: Colors.white)),
          )
        ],
      ),
    );
  }
}
