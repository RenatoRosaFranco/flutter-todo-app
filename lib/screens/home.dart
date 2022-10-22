import 'package:flutter/material.dart';
import 'package:news_app/constants/colors.dart';
import 'package:news_app/widgets/todo_item.dart';
import 'package:news_app/model/todo.dart';

import 'package:news_app/widgets/base/build_appbar.dart';
import 'package:news_app/widgets/base/search_box.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final todosList = ToDo.todoList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: buildAppBar(),
        ),
        body: Stack(
          children: [
            Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 15
            ),
            child: Column(
              children: [
                const searchBox(),
                Expanded(
                  child: ListView(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(
                            top: 50,
                            bottom: 20
                        ),
                        child: const Text(
                            'All ToDos',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w500
                            )
                        )
                      ),

                      for ( ToDo todoo in todosList)
                        ToDoItem(todo: todoo),
                    ],
                  )
                )
              ],
            ),
          ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      margin: const EdgeInsets.only(
                        bottom: 20,
                        right: 20,
                        left: 20
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: const [BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 0.0),
                            blurRadius: 10.0,
                            spreadRadius: 0.0
                        ),],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          hintText: 'Add a new todo item',
                          border: InputBorder.none
                        )
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        bottom: 20,
                        right: 20
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: tdBlue,
                        minimumSize: Size(60, 60),
                        elevation: 10
                      ),
                      child: const Text('+',
                        style: TextStyle(
                          fontSize: 40,
                        ),),
                    ),
                  )
                ],
              )
            ),
          ]
        )
    );
  }
}