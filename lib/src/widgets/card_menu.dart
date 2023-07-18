import 'dart:developer' as developer;
import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  final String title;
  final String description;
  final String img;
  const CardMenu(
      {super.key,
      required this.title,
      required this.description,
      required this.img});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      child: GestureDetector(
        onTap: () {
          developer.log('SOy un faking log');
           Navigator.pushNamed(context, '/');
        },
        child: Container(
            width: size.width,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: const Color.fromARGB(255, 206, 206, 206)
                          .withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 8,
                      offset: const Offset(0, 6))
                ]),
            child: 
            Row(children: [
              Expanded(
                flex: 8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text(title, style: const TextStyle(fontSize: 20),),
                  Text(description),
                ]),
              ),
                 Expanded(
                  flex: 2,
                  child: Image.asset(img)),
            ])),
      ),
    );
  }
}
