import 'package:dart_ipify/dart_ipify.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String ipAddress = 'hlw word';

  @override
  void initState() {
    super.initState();
    asyncMethod();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Center(
                child: Text(ipAddress,
                    style: const TextStyle(
                        fontSize: 30, fontWeight: FontWeight.bold)))));
  }

  void asyncMethod() async {
    await Ipify.ipv4().then((value) => {
          setState(() {
            ipAddress = value;
          })
        });
    // print(response);
  }
}
