// ignore_for_file: prefer_const_constructors, prefer_interpolation_to_compose_strings, avoid_print

import 'package:flutter/material.dart';

class  HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        leading: Icon(
          Icons.menu,
        ),
        title: Text('  Hi'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.directions_transit,
            ),
            onPressed: () {

            },
          ),
          IconButton(
            icon: Icon(
              Icons.car_rental,
            ),
            onPressed: () {
              print("what color is your Bugatti?");
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadiusDirectional.only(
                  topStart: Radius.circular(
                    20.0,
                  ),
                ),
              ),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    image: NetworkImage(
                      'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
                    ),
                    height: 200.0,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: 200.0,
                    color: Colors.black.withOpacity(.7),
                    padding: const EdgeInsets.symmetric(
                      vertical: 10.0,
                    ),
                    child: Text(
                      'Flower',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.white,

                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
void onNotification() {
  print('notification clicked');
}
