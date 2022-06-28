import 'package:flutter/material.dart';
import 'package:mountains/models/app_bottombar_item_model.dart';
import 'package:mountains/screens/splash_screen.dart';

class AppBottomBar extends StatefulWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  State<AppBottomBar> createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  // List<AppBottomBarItem> barItems = [];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 20,
      ),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(
              0.1,
            ),
            blurRadius: 10,
            offset: Offset.zero,
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(
          barItems.length,
          (index) {
            AppBottomBarItem currentBarItem = barItems[index];
            Widget barItemWidget;
            if (currentBarItem.isSelected) {
              barItemWidget = Container(
                padding: const EdgeInsets.only(
                  left: 15,
                  top: 5,
                  bottom: 5,
                  right: 15,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                  color: mainColor,
                ),
                child: Row(
                  children: [
                    Icon(
                      currentBarItem.icon,
                      color: Colors.white,
                    ),
                    const SizedBox(width: 5),
                    Text(
                      currentBarItem.label,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              );
            } else {
              barItemWidget = IconButton(
                icon: Icon(
                  currentBarItem.icon,
                  color: Colors.grey,
                ),
                onPressed: () {
                  setState(
                    () {
                      barItems.forEach(
                        (AppBottomBarItem item) {
                          item.isSelected = item == currentBarItem;
                        },
                      );
                    },
                  );
                },
              );
            }
            return barItemWidget;
          },
        ),
      ),
    );
  }
}
