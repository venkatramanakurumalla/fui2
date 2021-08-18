import 'dart:async';
import 'package:flutter/material.dart';
import 'i.dart';

void main() { runApp(MyApp());}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}
class SplashScreenState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5),
            ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder:
                (context) => MyGridScreen()
            )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.green,

      child:Image.asset('images/images.jpg'),
      //child:Image.asset('images/i.png'),
      //child:Image.network("https://rukminim1.flixcart.com/image/416/416/jqy3dzk0/painting/z/j/6/sar4636-1-art-of-creations-original-imaf8q2jyjtnfme3.jpeg?q=70"),
        //child:FlutterLogo(size:MediaQuery.of(context).size.height)
     // child:Image.network("https://images.all-free-download.com/images/graphicthumb/mosque_with_night_vector_backgrounds_531021.jpg"),
    );
  }
}
