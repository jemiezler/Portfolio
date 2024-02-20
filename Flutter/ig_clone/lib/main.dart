import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ig_clone/responsive/mobile_layout_screen.dart';
import 'package:ig_clone/responsive/responsive_layout_screen.dart';
import 'package:ig_clone/responsive/web_layout_screen.dart';
import 'package:ig_clone/screen/login.dart';
import 'package:ig_clone/util/color.dart';

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  kIsWeb
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
              apiKey: 'AIzaSyDkCg9kTvZr4Sck3RQTAXitmyXNNeF2zZI',
              appId: '1:859777062419:android:82394cb199d5a616b051e6',
              messagingSenderId: '859777062419',
              projectId: 'instagram-tut-5b2a6'))
      : Platform.isAndroid
          ? await Firebase.initializeApp(
              options: const FirebaseOptions(
                  apiKey: 'AIzaSyDkCg9kTvZr4Sck3RQTAXitmyXNNeF2zZI',
                  appId: '1:859777062419:android:82394cb199d5a616b051e6',
                  messagingSenderId: '859777062419',
                  projectId: 'instagram-tut-5b2a6'))
          : await Firebase.initializeApp();
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
      /*home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(), 
        webScreenLayout: WebScreenLayout(),
        ),*/
      home: LoginScreen(),
    );
  }
}
