import "package:flutter/material.dart";
import "package:tunazam_mobile/assets/base_style.dart";
import "package:tunazam_mobile/screens/bottom_nav.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: primaryColor,
        useMaterial3: true,
        splashFactory: NoSplash.splashFactory,
      ),
      home: const BottomNav(),
    );
  }
}
