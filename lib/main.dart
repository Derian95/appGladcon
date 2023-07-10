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
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          
          centerTitle: true,
          title:const  Text('Hola'),
          backgroundColor: Colors.deepOrange,
          elevation: 0,
          leading:const Center(
            child: Text('hola'),
          ),
          actions:  <Widget>[
          IconButton(
            onPressed: () {
            
          }, 
          icon:const Icon(Icons.share),
          tooltip: 'Soy un butun',
          )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
             Container(
              color: Colors.deepOrange,
              width: double.maxFinite,
              height: 150 ,
              child: const Text('rta')
               
               ),
               Column(
                children: [
                 Container(
                  width: double.maxFinite,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green
                  ),
                  child: const Text('Soy un text'),
                 )
                ],
              ),
        
            ],
          ),
        ),
        backgroundColor: Colors.white,

      ),
    );
  }
}
