import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'New App',
      theme: ThemeData(
        primarySwatch: Colors.purple,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'New App Home Page'),
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
  int _counter = 0;
  double _maxBid = 950.0;

  void _incrementBid(){
    setState(() {
      _counter+=50;
    });
    _decrementBid();
  }

  void _decrementBid() {
    setState(() {
      _maxBid -= 50;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'My Maximun Bid: $_maxBid',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Vc apostou $_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
            onPressed: _incrementBid,
            tooltip: 'Increment',
            child: Icon(Icons.add),
            //foregroundColor: Colors.cyan[300],
            backgroundColor: Colors.amber,
            splashColor: Colors.white,
            ), // This trailing comma makes auto-formatting nicer for build methods.
            /*FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: Icon(Icons.remove),
            //foregroundColor: Colors.cyan[300],
            backgroundColor: Colors.red,
            splashColor: Colors.white,
            ),*/
          ])
        )
    );
  }
}


