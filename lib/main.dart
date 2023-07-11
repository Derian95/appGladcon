import 'dart:math';

import 'package:flutter/material.dart';
import 'package:gladcon/src/widgets/card_menu.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Hola'),
          backgroundColor: Colors.deepOrange,
          elevation: 0,
          leading: const Center(
            child: Text('hola'),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.share),
              tooltip: 'Soy un butun',
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                      color: Colors.deepOrange,
                      width: double.maxFinite,
                      height: size.height / 5,
                      child: const Text('rta')),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 10),
                        child: Container(
                          margin: EdgeInsets.only(top: size.height / 10),
                          width: size.width,
                          height: size.height / 4,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: const Offset(0, 3),
                                )
                              ]),
                          child: const Text('Soy un text'),
                        ),
                      )
                    ],
                  ),
                ],
              ),
               ListView(
                children:<Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: size.width,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3)
                          )
                        ]
                      ),
                      child: const Text('Soy un card'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: size.width,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3)
                          )
                        ]
                      ),
                      child: const Text('Soy un card'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 10
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: size.width,
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: const Offset(0, 3)
                          )
                        ]
                      ),
                      child: const Text('Soy un card'),
                    ),
                  ),
                  
                  
                ],
              )
            ],
          ),
        ),
        backgroundColor: Colors.white,
      ),
    );
  }
}
