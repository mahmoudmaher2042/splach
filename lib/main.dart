import 'package:flutter/material.dart';


import 'calc.dart';


void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}
double res = value2/val;
Color color2 = Colors.purple;
Color color3 = Colors.purple;
double value2 = 175;
double val=5;double val2=5;
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.local_pizza),
        title: Text("flutter"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (color3 == Colors.blue.shade900 &&
                              color2 == Colors.purple) {
                            color3 = Colors.purple;
                            color2=Colors.blue.shade900;
                          } else {
                            color3 = Colors.blue.shade900;
                            color2=Colors.purple;
                          }
                        });
                      },
                      child: Container(
                        width: 140,
                        height: 160,
                        decoration: BoxDecoration(
                            color: color2,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("male"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          if (color3 == Colors.blue.shade900 &&
                              color2 == Colors.purple) {
                            color3 = Colors.purple;
                            color2=Colors.blue.shade900;
                          } else {
                            color3 = Colors.blue.shade900;
                            color2=Colors.purple;
                          }
                        });
                      },
                      child: Container(
                        width: 140,
                        height: 160,
                        decoration: BoxDecoration(
                            color: color3,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Text("female"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Container(width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(width: 300,
                        decoration: BoxDecoration(
                            color: Colors.purple,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: [Text("height"),
                            Text("${value2.round()} cm",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 28),),
                            Slider(
                                value: value2,
                                min: 80,
                                max: 210,
                                onChanged: (value) {
                                  setState(() {
                                    value2 = value;
                                  });
                                })
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),Container(
                child: Row(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(5)),width: 140,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [Text(("weight"),style: TextStyle(color: Colors.white),),
                              Text("$val",style: TextStyle(color: Colors.white),),
                              Container(child: Row(children: [
                                Container(width: 40,
                                  child: FloatingActionButton(backgroundColor: Colors.grey,onPressed: (){
                                    setState(() {
                                      val--;
                                    });
                                  },child: Icon(Icons.minimize),),
                                ),SizedBox(width: 15,),Container(width: 40,
                                  child: FloatingActionButton(backgroundColor: Colors.grey,onPressed: (){setState(() {
                                    val++;
                                  });},child: Icon(Icons.add),autofocus: true),
                                ),
                              ],))],)
                        ),
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(decoration: BoxDecoration(color: Colors.purple,borderRadius: BorderRadius.circular(5)),width: 140,
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(children: [Text(("age"),style: TextStyle(color: Colors.white),),
                              Text("$val2",style: TextStyle(color: Colors.white),),
                              Container(child: Row(children: [
                                Container(width: 40,
                                  child: FloatingActionButton(backgroundColor: Colors.grey,onPressed: (){
                                    setState(() {
                                      val2--;
                                    });
                                  },child: Icon(Icons.minimize),),
                                ),SizedBox(width: 15,),Container(width: 40,
                                  child: FloatingActionButton(backgroundColor: Colors.grey,onPressed: (){setState(() {
                                    val2++;
                                  });},child: Icon(Icons.add),),
                                ),
                              ],))],)
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  ElevatedButton(style:ButtonStyle(fixedSize: MaterialStateProperty.resolveWith((states) => Size(300, 10)),backgroundColor: MaterialStateColor.resolveWith((states) => Colors.purple)),onPressed: (){setState(() {
                    cal();advice(); Navigator.of(context).push(MaterialPageRoute(builder: (i){return CalculatePage(res,type,adv);
                    }));
                  });
                  }, child: Text("Calculate")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}cal() {
  if (ress <= 25)
    type = 'normal';
  else if (ress >= 25 && ress <= 45)
    type = 'fat';
  else
    type = 'thin';
}
String type='';
String adv='';
advice() {
  if (res <= 25)
    adv = 'good keep going';
  else if (res >= 25 && res <= 45)
    adv = 'you should do some excersice';
  else
    type = 'you should to be careful';
}

