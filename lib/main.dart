import 'package:flutter/material.dart';
import 'UI_chal.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Container(width: 1000000,     height: 100000000,child: Column(
                    children: [
                      Image.asset('assets/img/img.png'),

                      FutureBuilder(
                        future: Future.delayed(const Duration(seconds: 5), () => 1),
                        builder: (context, snapShot) {
                          return Center(
                            child: snapShot.hasData
                                ? const Call()
                                : const CircularProgressIndicator(),
                          );
                        },
                      ),
                    ],
                  ),
          ),





    );
  }
}

class Call extends StatefulWidget {
  const Call({Key? key}) : super(key: key);

  @override
  State<Call> createState() => _CallState();
}

class _CallState extends State<Call> {
  @override
  Widget build(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (h) {
      return const UI_pre();
    }));
    return const UI_pre();
  }
}
