import 'dart:async';

import 'package:flutter/material.dart';

import 'home_screen.dart';


class SplashScreen extends StatefulWidget{
  const SplashScreen({Key? key}): super(key:key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen>{

    @override
    void initState(){
      super.initState();
      Timer(const Duration(seconds:5), () {
        Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)
        => const HomeScreen()));
      });
    }

  @override
  Widget build(BuildContext context){
    return const Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        child:Center(
          child:Image(
            height:400,
            image:AssetImage('assets/logo_dark.png'),
          ),
        ),
      ),
    );
  }
}
