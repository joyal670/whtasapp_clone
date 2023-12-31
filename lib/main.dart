import 'package:flutter/material.dart';
import 'package:whatsapp_clone/auth/language.dart';
import 'package:whatsapp_clone/auth/login.dart';
import 'package:whatsapp_clone/auth/otp.dart';
import 'package:whatsapp_clone/auth/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/LanguageSelectionScreen',
      routes: {
        '/LanguageSelectionScreen': (context) =>
            const LanguageSelectionScreen(),
        '/WelcomeScreen': (context) => const WelcomeScreen(),
        '/LoginScreen': (context) => const LoginScreen(),
        '/LanguageSelect': (context) => const LanguageSelectScreen(),
        '/OTPScreen': (context) => const OTPScreen(),
      },
    );
  }
}
