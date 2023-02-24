import 'package:bmi/UI_chal.dart';
import 'package:flutter/material.dart';

String result = '';
double BMI = Bmi;
String result2='';
Color ColorState=Colors.green;

working(){if(BMI > 18.5 && BMI<25){
  result = 'Normal';
  result2 ='you body is Normal';
  ColorState=Colors.green;
}
else if(BMI >25 && BMI <30)
{
  result = 'Average';
  result2 ='you body is Average';
  ColorState=Color(0xffFFFF66);
}
else if(BMI >30 && BMI <40)
{
  result = 'Average';
  result2 ='you body is Average';
  ColorState=Color(0xffE9900);
}
else if(BMI >40)
{
  result = 'Serve';
  result2 ='you body is Serve';
  ColorState=Color(0xffC55956);
}
}

class UI_pre2 extends StatefulWidget {
  const UI_pre2(double Bmi, String result,String result2, {Key,key}) : super(key: key);

  @override
  State<UI_pre2> createState() => _UI_pre2State();
}
class _UI_pre2State extends State<UI_pre2> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff0B0D2E), elevation: 0),
      body: Container(
          child: Column(
            children: [

              Spacer(flex:1),
              Row(
                children: [
                  Spacer(flex: 1),
                  Text('Your result',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold)),
                  Spacer(flex: 6),
                ],
              ),
              Spacer(flex:1),
              Container(
                height: 400,
                width: 400,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: Color(0xff1D1E3D)),
                child: Column(
                  children: [
                    Spacer(flex: 1,),
                    Text(result,
                        style: TextStyle(color: ColorState, fontSize: 18)),
                    Spacer(flex: 1,),
                    Text(
                      '$BMI',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(flex: 1,),
                    Text(result2,style: TextStyle(color: Colors.white,fontSize: 12),),
                    Spacer(flex: 1,),
                  ],
                ),
              ),
              Spacer(flex:1),
              Padding(
                padding: const EdgeInsets.only(right: 50.0,left: 50.0),
                child: Container(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                              return UI_pre();
                            }));
                      },
                      child: Text('Recalculate'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffdc4168))),
                  width: double.infinity,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10), color: Colors.red),
                ),
              ),
              Spacer(flex:1),
            ],
          ),
          height: double.infinity,
          width: double.infinity,
          color: Color(0xff0B0D2E)),
    );
  }
}
