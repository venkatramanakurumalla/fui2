import 'package:flutter/material.dart';
import"credit.dart";
class NewScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        //color: Color(0xff258DED),
        //height: 400.0,
        alignment: Alignment.center,
        child: new Column(
          children: [
            InkWell(
              //children: <Widget>[Text(""), Text("")],
              child:  Container(

                // padding: const EdgeInsets.all(8),

                //child: const Text('First', style: TextStyle(fontSize: 20)),
                //color: Colors.yellow,
                child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ64dMuAb5azC1nKHFkmcOqN6NVaRjsaotWBA&usqp=CAU'),

              ),
              onTap: () {
                print("Tapped on container");
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyAp()));
                // Navigator.push(
                // context,
                // MaterialPageRoute(builder: (context) => SecondRoute()),
              },),




          ],
        ),

      ),
    bottomNavigationBar: BottomNavigationBar(
    currentIndex: 0, // this will be set when a new tab is tapped
    items: [
    BottomNavigationBarItem(
    icon: new Icon(Icons.home),
    title: new Text('Home'),
    ),
    BottomNavigationBarItem(
    icon: new Icon(Icons.mail),
    title: new Text('live'),
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person),
    title: Text('calender')
    )
    ],
    ),
    );

  }
}
