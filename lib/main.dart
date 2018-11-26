import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 25.0),
                  child: Image.asset('assets/hotels.png', width: 200, height: 200,),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text('Hotels', style: TextStyle(color: Colors.white, fontFamily: 'FlamanteRoma', fontSize: 34.0),),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 75.0),
                  child: Text('This is the body', textAlign: TextAlign.center, style: TextStyle(color: Colors.white, fontSize: 18.0),)
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
