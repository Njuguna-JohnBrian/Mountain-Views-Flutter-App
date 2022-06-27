import 'package:flutter/material.dart';
import 'package:mountains/widgets/drawer.dart';
import 'package:mountains/widgets/top_app_bar.dart';

import '../widgets/app_category_list.dart';
import '../widgets/app_header.dart';
import '../widgets/app_mount_listview.dart';
import '../widgets/app_search.dart';
import '../widgets/bottom_app_bar.dart';

const Color mainColor = Color(0xFFFF5656);

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: TopAppBar(),
      drawer: AppDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          AppHeader(),
          AppSearch(),
          Expanded(
            child: AppMountListView(),
          ),
          AppCategoryList(),
          AppBottomBar()
        ],
      ),
    );
  }
}


