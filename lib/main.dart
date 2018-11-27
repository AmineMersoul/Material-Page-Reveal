import 'package:flutter/material.dart';
import 'package:material_page_reveal/page_reveal.dart';
import 'package:material_page_reveal/pager_indicator.dart';
import 'package:material_page_reveal/pages.dart';

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
          Page(
            viewModel: pages[0],
            percentVisible: 1.0,
          ),
          PageReveal(
            revealPercent: 1.0,
            child: Page(
              viewModel: pages[1],
              percentVisible: 1.0,
            ),
          ),
          PagerIndicator(
            viewModel: PagerIndicatorViewModel(
              pages,
              1,
              SlideDirection.leftToRight,
              1.0
            ),
          ),
        ],
      ),
    );
  }
}
