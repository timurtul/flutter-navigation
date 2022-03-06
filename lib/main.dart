import 'dart:html';

import 'package:flutter/material.dart';
import 'package:navigation_flutter/model/screen_arg.dart';
import 'package:navigation_flutter/navigation/screen_a.dart';
import 'package:navigation_flutter/navigation/screen_b.dart';
import 'package:navigation_flutter/navigation/screen_c.dart';
//https://docs.flutter.dev/cookbook/navigation/navigation-basics
void main() {
  runApp(App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //Burası navigasyon işleminin yapıldığı yerdir
        initialRoute: '/',
        routes: {
          '/': (context) => const ScreenHome(),
          '/screena': (context) => const ScreenA(),
          '/screenb': (context) => const ScreenB(),
          '/screenc': (context) => const ScreenC()

        });
    home:
    const ScreenHome();
  }
}

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: Column(
        children: [
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screena');
            },
            child: const Text("Screen A"),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screenb');
            },
            child: const Text("Screen B"),
          ),
           OutlinedButton(
            onPressed: () {
Navigator.pushNamed(context, '/screenc', arguments: ScreenArguments('selam','Hoş Geldin'));
            },
            child: const Text("Screen C"),
          ),
        ],
      )),
    );
  }
}
