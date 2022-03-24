import 'package:fireflower_music_app/pages/home.dart';
import 'package:fireflower_music_app/pages/login.dart';
import 'package:fireflower_music_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const FireFlowerMusic());
}

class FireFlowerMusic extends StatelessWidget {
  const FireFlowerMusic({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '花火音乐',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: primary,
      ),
      initialRoute: '/login',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login(),
      },
    );
  }
}
