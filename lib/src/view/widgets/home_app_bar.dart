import 'package:flutter/material.dart';

class HomeAppBar {
  AppBar build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ))
      ],
      title: Center(
        child: Text.rich(
          TextSpan(
            style: TextStyle(
              color: Colors.white,
              letterSpacing: 2,
              wordSpacing: 3,
            ),
            children: [
              WidgetSpan(
                child: Image.asset(
                  "assets/icon.png",
                  height: 26,
                ),
              ),
              WidgetSpan(
                child: SizedBox(
                  width: 16,
                ),
              ),
              TextSpan(text: "News Home")
            ],
          ),
        ),
      ),
      backgroundColor: Colors.lightGreen[500],
      bottom: TabBar(
        tabs: [
          //   Tab(
          //  text: 'News',
          //  icon: Icon(Icons.newspaper),
          //  ),
          Tab(
            text: 'Popular',
            icon: Icon(Icons.hot_tub),
          ),
        ],
      ),
    );
  }
}
