import 'package:fluprojects/pages/todoapplittle.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title:Text("Mini ToDo"),
          elevation:0 ,
          backgroundColor:Colors.amber[400],
        ),
        body:ListView(
            children:[
              Todolist(
                taskName: "Make tutorial",
                taskCompleted:true ,
                onChanged: (p0){

                },
              ),
              Todolist(
                taskName: "Make tutorial",
                taskCompleted:true ,
                onChanged: (p0){

                },
              ),
            ]
        )
    );
  }
}
