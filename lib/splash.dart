import 'package:bartab/friends.dart';
import 'package:flutter/material.dart';
import 'login.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  SplashState createState() => SplashState();
}
class SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    //navigateToLogOnTime();
  }
  navigateToLogOnTime() async{
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacement(context as BuildContext, MaterialPageRoute(builder: (context)=> LogIn()));
  }

  navigateToLogInOnPush() {
    Navigator.push(context as BuildContext,MaterialPageRoute(builder: (context)=> LogIn()));
  }


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Container(
        margin: EdgeInsets.all(0),
          padding: EdgeInsets.all(0),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: Color(0xffff9d2e),
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.zero,
            border: Border.all(color: Color(0x4d9e9e9e), width: 1),
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
          ///***If you have exported images you must have to copy those images in assets/images directory.
              Image(
                image: AssetImage("assets/images/BarTabAppIcon.png"),
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: Alignment(0.0, 0.50),
                child: MaterialButton(
                  onPressed: () {navigateToLogInOnPush();},
                  color: Color(0xffff9d2e),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: Color(0xff808080), width: 1),
                  ),
                  padding: EdgeInsets.all(14),
                  child: Text("E N T E R", style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.w900,
                    fontStyle: FontStyle.normal,
                  ),),
                  textColor: Color(0xffffffff),
                  height: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05,
                  minWidth: MediaQuery
                      .of(context)
                      .size
                      .width * 0.5,
                ),
              ),
            ],
          ),
      ),
    );
  }
}





