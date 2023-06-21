import 'package:flutter/material.dart';
import 'dart:async';
import 'package:task2udacoding/welcome.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void initState(){
    super.initState();
    splashscreenStart();
  }
  splashscreenStart() async{
    var duration = const Duration(seconds: 8);
    return Timer(duration, (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => welcome()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget> [
            Icon(Icons.adb,
              size: 100,
              color:  Colors.white,),

            SizedBox(height: 24,),

            Text("N A N D O  F A K L I N" ,
              style:  TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30
              ),),

          ],
        ),
      ),
    );
  }
}

