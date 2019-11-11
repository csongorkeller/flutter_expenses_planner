import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal expenses',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal expenses'),
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 100,
            child: Card(
              color: Colors.red[100],
              child: Text('CHART'),
              elevation: 5,
            ),
          ),
          Container(
            width: double.infinity,
            height: 100,
            child: Card(
              color: Colors.blue,
              child: Text('LIST OF TX'),
            ),
          )
        ],
      ),
    );
  }
}
