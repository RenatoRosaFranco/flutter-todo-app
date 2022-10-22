import 'package:flutter/material.dart';
import 'package:news_app/constants/colors.dart';

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