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

  void greetUser(){
    print(myController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
            TextField(
              controller:myController
            ),

            ElevatedButton(onPressed: greetUser, child: Text("tap"),
            )
        ],
        ),
      ),
    );
  }
}
