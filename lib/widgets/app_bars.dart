import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uber_clone/constants/constants.dart';
import 'package:uber_clone/widgets/styles.dart';

AppBar homeAppBar = AppBar(
  backgroundColor: Colors.white,
  title: const Text(Constants.appName, style: appBarTextStyle),
);

AppBar sevicesAppBar = AppBar(
  backgroundColor: Colors.white,
  title: const Text(Constants.menuServices, style: appBarTextStyle),
);

AppBar activityAppBar = AppBar(
  backgroundColor: Colors.white,
  title: const Text(Constants.menuActivity, style: appBarTextStyle),
);

AppBar accountAppBar = AppBar(
  backgroundColor: Colors.white,
  title: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(Constants.userName, style: appBarTextStyle),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2.0),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(10.0)),
            child: const Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.black,
                  size: 10,
                ),
                Text(
                  '4.5',
                  style: TextStyle(fontSize: 14),
                )
              ],
            ),
          )
        ],
      ),
      CircleAvatar(
        child: Icon(
          Icons.person,
          size: 20,
        ),
      ),
    ],
  ),
);
