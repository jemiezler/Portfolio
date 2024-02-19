import 'package:flutter/material.dart';
import 'package:ig_clone/responsive/mobile_layout_screen.dart';
import 'package:ig_clone/responsive/responsive_layout_screen.dart';
import 'package:ig_clone/responsive/web_layout_screen.dart';
import 'package:ig_clone/util/color.dart';

import 'package:firebase_core/firebase_core.dart';

void main() /*async*/{
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(); กลัยมาแก้ firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(), 
        webScreenLayout: WebScreenLayout(),
        ),
    );
  }
}