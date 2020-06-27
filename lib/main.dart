import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  int _counter = 0;
  String rohan =
      "dhruv:Hello World. moosa bhai:Good to go. I am quite good . Hope, to see you. There could be more and more possibilty to continue, to do so.";
  String rahul = "";
  int x = 0;
  bool make = true;

  void _incrementCounter() {
    setState(() {
      if (make == true) {
        x = _counter;
        for (int i = x; i < rohan.length; i++) {
          if (rohan[i] != '.') {
            rahul += rohan[i];
            _counter = i;
          } else {
            make = false;
            _counter = i;
            break;
          }
        } //
      } else {
        //rahul = " ";
        x = _counter;
        for (int i = x + 1; i < rohan.length; i++) {
          if (rohan[i] != '.') {
            rahul += rohan[i];
            _counter = i;
          } else {
            make = false;
            _counter = i;
            break;
          }
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start    ,
          children: [
            Text(
              "$rahul",
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Start button',
        child: Icon(
          Icons.star,
          color: Colors.purple,
        ),
      ),
    );
  }
}
