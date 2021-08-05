import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Habits'),
          backgroundColor: Colors.blue,
        ),
        body: Container(
            padding: EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () => resetCount(),
                    child: Text('Reset'),
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                  ),
                  Text('Exercise streak: $count',
                      style: TextStyle(fontSize: 20)),
                  ElevatedButton(
                    onPressed: () => addCount(),
                    child: Text('+'),
                    style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(15),
                        textStyle: TextStyle(fontSize: 20)),
                  )
                ])));
  }

  void resetCount() {
    count = 0;
    setState(() => count);
  }

  void addCount() {
    count++;
    setState(() => count);
  }
}
