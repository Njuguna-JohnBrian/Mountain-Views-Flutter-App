import 'package:flutter/material.dart';
import 'package:mountains/widgets/drawer.dart';

import 'header_circular_avatar.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 30, top: 30, right: 30),
      child: Row(
        children: [
          HeaderAvatar(),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Hello JB 😎',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Good Morning!',
                style: TextStyle(color: mainColor, fontSize: 12),
              )
            ],
          )
        ],
      ),
    );
  }
}
