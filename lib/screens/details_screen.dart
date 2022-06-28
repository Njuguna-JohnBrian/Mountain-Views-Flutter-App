import 'package:flutter/material.dart';
import 'package:mountains/models/mount_model.dart';

import '../widgets/details_bottom_actions.dart';
import '../widgets/details_rating_bar.dart';

class DetailsPage extends StatelessWidget {
  MountModel mount;
  DetailsPage({
    Key? key,
    required this.mount,
  }) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    var selectedItem = mount;
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
                child: Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                              selectedItem.path,
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.transparent,
                              Colors.black.withOpacity(
                                0.7,
                              )
                            ],
                            begin: Alignment.center,
                            end: Alignment.bottomCenter,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 30,
                      right: 0,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            selectedItem.name,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            selectedItem.location,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                    AppBar(
                      elevation: 0.0,
                      backgroundColor: Colors.transparent,
                      foregroundColor: Colors.white,
                      iconTheme: const IconThemeData(
                        color: Colors.white,
                      ),
                      title: const Center(
                        child: Icon(
                          Icons.terrain,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                      actions: [
                        Container(
                          margin: const EdgeInsets.only(
                            right: 10,
                          ),
                          child: const Icon(
                            Icons.pending,
                            color: Colors.white,
                            size: 30,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  DetailsRatingBar(),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 20,
                          ),
                          child: Text(
                            'About ${selectedItem.name}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20,
                            right: 20,
                            bottom: 20,
                          ),
                          child: Text(
                            '${selectedItem.description}',
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  DetailsBottomActions(),
                ],
              ),
            )
          ],
        ));
  }
}
