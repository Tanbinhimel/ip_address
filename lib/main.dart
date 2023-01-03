import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

void main() async {
  runApp(const MyApp());
  // final ipv4 = await Ipify.ipv4();
  // if (kDebugMode) {
  //   print(ipv4);
  // } // 98.207.254.136
  //
  // final ipv6 = await Ipify.ipv64();
  // if (kDebugMode) {
  //   print(ipv6);
  // } // 98.207.254.136 or 2a00:1450:400f:80d::200e
  //
  // final ipv4json = await Ipify.ipv64(format: Format.JSON);
  // if (kDebugMode) {
  //   print(ipv4json);
  // } //{"ip":"98.207.254.136"} or {"ip":"2a00:1450:400f:80d::200e"}

  // The response type can be text, json or jsonp
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
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
          primarySwatch: Colors.blue,
        ),
        home: const HomePage());
  }
}
