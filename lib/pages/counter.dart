import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  // variable
  int _counter=0;
  //  method
  void _incrementCounter(){
    // setState rebuilds the widget
    setState(() {
      _counter++;
    });
  }
  //  UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // message
          Text("You pushed this button this many times: "),
          
          //counter value
          Text(_counter.toString(),
          style:TextStyle(fontSize: 40),

          ),
          ElevatedButton(onPressed: _incrementCounter, child: Text("Increment!"))
          
        ],
      ),
      )
    );
  }
}
