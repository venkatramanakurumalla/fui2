import 'package:flutter/material.dart';
import 'firstscreen.dart';
import 'package:flutter/cupertino.dart';
import 'home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridScreen(),
    );
  }
}

class MyGridScreen extends StatefulWidget {
  MyGridScreen({key}) : super(key: key);


  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Donote To Masjid A-Hamdulillah"),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: GridView.extent(
            primary: false,
            padding: const EdgeInsets.all(16),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            maxCrossAxisExtent: 200.0,
            children: <Widget>[
              InkWell(
                //children: <Widget>[Text(""), Text("")],
                child: Container(

                  // padding: const EdgeInsets.all(8),

                  //child: const Text('First', style: TextStyle(fontSize: 20)),
                  //color: Colors.yellow,
                  child: Image.asset(
              "images/img1.png"),

                ),
                onTap: () {
                  print("Tapped on container");
                  Navigator.of(context).push(
                     // MaterialPageRoute(builder: (context) => NewScreen()));
                      MaterialPageRoute(builder: (context) => PaymentScreen()));
                  // Navigator.push(
                  // context,
                  // MaterialPageRoute(builder: (context) => SecondRoute()),
                },),

              Container(
                padding: const EdgeInsets.all(8),


                //child: Image.asset('images/ball1.png'),
                //),
                child: Image.asset(
                    'images/img4.png'),

              ),
              Container(
                padding: const EdgeInsets.all(8),
                //child: const Text('Third', style: TextStyle(fontSize: 20)),
                // color: Colors.blue,
                //  child:Image.network(https://data:image/jpeg;base64,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'),
                child: Image.asset(
                    'images/img7.jpg'),
              ),
              Container(
                padding: const EdgeInsets.all(8),
                // child: const Text('Four', style: TextStyle(fontSize: 20)),
                // color: Colors.yellow,
                child: Image.asset(
                    'images/img8.jpg'),

              ),
              Container(
                padding: const EdgeInsets.all(8),
                //child: const Text('Fifth', style: TextStyle(fontSize: 20)),
                //color: Colors.yellow,
                child: Image.network(
                    'images/img7.jpg'),

              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.asset(
                    'images/i.png'),

//                color: Colors.blue,

              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    'https://www.clipartmax.com/png/small/153-1536313_masjid-assyakirin-mosque-google-logo-logo-masdjid.png'),

//                color: Colors.blue,

              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrOwC3VxNKAxP1vNk4eu5liUs2OzClqiMZmA&usqp=CAU'),

//                color: Colors.blue,

              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    'https://lh3.googleusercontent.com/proxy/b_5kBfeIWN-IHn7RHqqSrmp3zjOicH591GFeeTIqkheUoObTnS4hAOTygZfKr_Uv-Owt-sA77sgv7ugRaOaC-iY8sqwxL-n3WZzQfVXa3Grk'),

//                color: Colors.blue,

              ),
              Container(
                padding: const EdgeInsets.all(8),
                child: Image.network(
                    'https://png.pngitem.com/pimgs/s/205-2053994_masjid-al-nabawi-clipart-hd-png-download.png'),

//                color: Colors.blue,

              ),

            ],
          )),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('donate'),
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