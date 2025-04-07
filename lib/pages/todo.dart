import 'package:flutter/material.dart';
class ToDo extends StatefulWidget {
  const ToDo({super.key});

  @override
  State<ToDo> createState() => _ToDoState();
}

class _ToDoState extends State<ToDo> {
  //text editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  //greet
  String greetingMessage="";

  void greetUser(){
    setState(() {
      greetingMessage="Hello," + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Text(greetingMessage),
            TextField(
              controller:myController,
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                hintText: "Type your sentence",
              ),
            ),

            ElevatedButton(onPressed: greetUser, child: Text("tap"),
            )
        ],
        ),
      ),
      ),
    );

  }
}
