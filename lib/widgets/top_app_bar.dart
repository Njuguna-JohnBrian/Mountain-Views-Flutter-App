import 'package:flutter/material.dart';

const Color mainColor = Color(0xFFFF5656);

class TopAppBar extends AppBar {
  TopAppBar({Key? key})
      : super(key: key, 
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: const Center(
            child: Icon(
              Icons.terrain,
              color: mainColor,
              size: 40,
            ),
          ),
          actions: const [
            SizedBox(
              height: 40,
              width: 40,
            ),
          ],
          iconTheme: const IconThemeData(color: mainColor),
        );
}
