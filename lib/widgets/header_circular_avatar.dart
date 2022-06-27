import 'package:flutter/material.dart';

class HeaderAvatar extends ClipOval {
  HeaderAvatar({Key? key})
      : super(
          key: key,
          child: Image.network(
            'https://thejitu.com/wp-content/uploads/2021/10/John-Brian-Njuguna.jpg',
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        );
}
