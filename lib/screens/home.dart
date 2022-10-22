import 'package:flutter/material.dart';
import 'package:news_app/constants/colors.dart';
import 'package:news_app/widgets/todo_item.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: tdBGColor,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: buildAppBar(),
        ),
        body: Container(
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
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem(),
                    ToDoItem()
                  ],
                )
              )
            ],
          ),
        )
    );
  }
}

// Widgets
class buildAppBar extends StatelessWidget {
  const buildAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: tdBGColor,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              Icons.menu,
              color: tdBlack,
              size: 30
            ),
            SizedBox(
              height: 40,
              width: 40,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset('assets/images/avatar.jpeg'),
              ),
            )
          ],
        )
    );
  }
}
class searchBox extends StatelessWidget {
  const searchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20)
      ),
      child: const TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(
            Icons.search,
            color: tdBlack,
            size: 20,
          ),
          prefixIconConstraints: BoxConstraints(
            maxHeight: 20,
            minWidth: 25
          ),
          border: InputBorder.none,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: tdGrey
          )
        ),
      ),
    );
  }
}