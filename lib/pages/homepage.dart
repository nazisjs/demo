import 'package:fluprojects/pages/todoapplittle.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  //list of todo tasks
  List toDoList=[
    ["Do exercise",false],
    ["Do exercise",false],
  ];
  //checkbox tap
  void checkBoxChanged(bool? value,int index) {
    setState(() {
      toDoList[index][1] = !toDoList[index][1];
    });
  }

  void createNewTask(){
    showDialog(context: context, builder:(context){
      return AlertDialog();
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow[200],
        appBar: AppBar(
          title:Text("Mini ToDo"),
          elevation:0 ,
          backgroundColor:Colors.amber[400],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:createNewTask,
          child:Icon(Icons.add),
        ),
        body:ListView.builder(
            itemCount:toDoList.length,
            itemBuilder:(context,index){
              return Todolist(taskName: toDoList[index][0], taskCompleted: toDoList[index][1], onChanged:(value)=>checkBoxChanged(value,index),
              );
            }
        )
    );
  }
}
