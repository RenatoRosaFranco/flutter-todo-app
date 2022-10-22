import 'package:flutter/material.dart';
import 'package:news_app/constants/colors.dart';

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
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80),
                child: Image.asset('assets/images/avatar.jpeg'),
              ),
            )
          ],
        )
    );
  }
}