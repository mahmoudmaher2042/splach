import 'package:bmi/UI_chal1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class UI_pre extends StatefulWidget {
  const UI_pre({Key? key}) : super(key: key);

  @override
  State<UI_pre> createState() => _UI_preState();
} Color _male = Color(0xff26263c);
Color _female = Color(0xff26263c);
double value1 = 150;
double age = 0;
double new_value = 0;
double weight = 0;
double Bmi=age*new_value;

class _UI_preState extends State<UI_pre> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff1d2136),
        title: Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Row(children: [Icon(Icons.local_pizza), Text('Pizza Hat')]),
        ),
      ),
      body: Container(
        color: Color(0xff1d2136),
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            Row(
              children: [
                Spacer(flex: 1),
                Container(
                  height: 150,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _male = Color(0xffdc4168);
                        _female = Color(0xff26263c);
                      });
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.male, size: 50),
                          Text(
                            'Male',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all(_male)),
                  ),
                ),
                Spacer(flex: 1),
                Container(
                  height: 150,
                  width: 170,
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _male = Color(0xff26263c);
                        _female = Color(0xffdc4168);
                      });
                    },
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.female, size: 50),
                          Text(
                            'Female',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                        backgroundColor: MaterialStateProperty.all(_female)),
                  ),
                ),
                Spacer(flex: 1),
              ],
            ),
            SizedBox(
              height: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xff26263c),
                      borderRadius: BorderRadius.circular(20)),
                  width: 400,
                  height: 150,
                  child: Stack(
                    children: [
                      Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Height',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Center(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${new_value.round()}',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  Text(
                                    'Cm',
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.white),
                                  )
                                ],
                              ),
                            ),
                            Slider(
                              activeColor: Color(0xffdc4168),
                              inactiveColor: Colors.white,
                              value: new_value.toDouble(),
                              onChanged: (value) {
                                setState(() {
                                  new_value = value;
                                });
                              },
                              max: 200,
                              min: 0,
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ),
            Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xff26263c),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Weight',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            '${weight.round()}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (weight > 0) {
                                      weight -= 1;
                                    }
                                  });
                                },
                                child: Center(child: Icon(Icons.minimize)),
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    weight += 10;
                                  });
                                },
                                child: Center(child: Icon(Icons.add)),
                                backgroundColor: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                Spacer(),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Color(0xff26263c),
                      borderRadius: BorderRadius.circular(20)),
                  child: Stack(children: [
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Age',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                          Text(
                            '${age.round()}',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    if (age > 0) {
                                      age -= 1;
                                    }
                                  });
                                },
                                child: Center(child: Icon(Icons.minimize)),
                                backgroundColor: Colors.grey,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  setState(() {
                                    age += 1;
                                  });
                                },
                                child: Center(child: Icon(Icons.add)),
                                backgroundColor: Colors.grey,
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                Spacer(),
              ],
            ),
            Spacer(flex: 1),
            Padding(
              padding: const EdgeInsets.only(left: 55.0, right: 55.0),
              child: Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10), color: Colors.red),
                child: ElevatedButton(
                    onPressed: () {
                      cal();
                      print(Bmi);
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          working();
                          return UI_pre2(Bmi,result,result2);
                        },
                      ));
                    },
                    child: Text('Calculate'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffdc4168))),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }
  cal(){Bmi =weight/(new_value/100)*(new_value/100);}
}

