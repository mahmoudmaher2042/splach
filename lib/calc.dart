import 'package:flutter/material.dart';

import 'main.dart';



void main() {
  runApp(MaterialApp(
    home: CalculatePage(res,type,adv),
    debugShowCheckedModeBanner: false,
  ));
}

class CalculatePage extends StatefulWidget {
  const CalculatePage(double res, String type, String adv, {key}) : super(key: key);

  @override
  State<CalculatePage> createState() => _CalculatePageState();
}

class _CalculatePageState extends State<CalculatePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.black,
          child: Column(children: [
            Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "your result",
                        style: TextStyle(fontSize: 25, color: Colors.white),
                      ),
                    ],
                  ),SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 300,
                    height: 380,
                    decoration: BoxDecoration(
                        color: Colors.white10,
                        borderRadius: BorderRadius.circular(25)),
                    child: Column(
                      children: [SizedBox(height: 20,),
                        Text(
                          "$type",
                          style: TextStyle(fontSize: 18, color: Colors.tealAccent),
                        ),SizedBox(height: 50,),
                        Text(
                          "$ress",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ), SizedBox(height: 80,),Center(
                          child: Text(
                            "$adv",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),SizedBox(height: 20,), ElevatedButton(style:ButtonStyle(fixedSize: MaterialStateProperty.resolveWith((states) => Size(300, 10)),backgroundColor: MaterialStateColor.resolveWith((states) => Colors.purple)),onPressed: (){setState(() {
                    cal();advice(); Navigator.of(context).push(MaterialPageRoute(builder: (i){return MyApp();
                    }));
                  });
                  }, child: Text("Recalculate"))
                ],
              ),
            )
          ]),
        ));
  }
}

String typ = "";
double ress = res;
