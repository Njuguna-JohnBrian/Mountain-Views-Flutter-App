import 'package:flutter/material.dart';

const Color mainColor = Color(0xFFFF5656);

class AppDrawer extends Drawer {
  AppDrawer({Key? key})
      : super(key: key, 
          child: Container(
            padding: const EdgeInsets.all(30),
            color: mainColor,
            alignment: Alignment.bottomLeft,
            child: const Icon(
              Icons.terrain,
              color: Colors.white,
              size: 80,
            ),
          ),
        );
}
