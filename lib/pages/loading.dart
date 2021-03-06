import 'dart:async';
import 'package:flutter/material.dart';
import 'package:project_1/program/jloop.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  SetupWorldTime() async {
   WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
   Timer.run(() {
     Navigator.pushReplacementNamed(context,"/home",arguments: {
       'location' : instance.location,
       'flag' : instance.flag,
       'time' : instance.time,
       'isDaytime': instance.isDaytime,
   });



 });
 }


  @override
  void initState() {
    super.initState();
    SetupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      )
    );
  }
}