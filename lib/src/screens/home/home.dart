import 'package:flutter/material.dart';
import 'package:gladcon/src/widgets/custom_app_bar.dart';

import '../../widgets/card_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar:
          CustomAppBar(title: 'GladconApp',  actionsList: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
          tooltip: 'Soy un bsutun',
        )
      ]),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                    color: Colors.deepOrange,
                    width: double.maxFinite,
                    height: size.height / 5,
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Text(
                          'Bienvenido deriandar',
                          style: TextStyle(fontSize: 35, color: Colors.white),
                        ))),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Container(
                          margin: EdgeInsets.only(top: size.height / 12),
                          width: size.width,
                          height: size.height / 6,
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
                          child: const Padding(
                             padding:  EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                            child:  Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                
                                Text('Id  0d123123123123', style: TextStyle(fontSize: 25,),),
                                SizedBox(height: 15,),
                                Text('Token generado', style: TextStyle(fontSize: 18,color: Color.fromARGB(255, 121, 121, 121) ),),
                              ],
                            ),
                          )),
                    )
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView(
                children: const <Widget>[
                  CardMenu(
                      title: 'Soy un tile',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg'),
                  CardMenu(
                      title: 'Soy un tile',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg'),
                  CardMenu(
                      title: 'Soy un tile',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg'),
                  CardMenu(
                      title: 'Soy un tile',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg'),
                       CardMenu(
                      title: 'Soy un tile',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg'),
                       CardMenu(
                      title: 'Soy un tile',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg'),
                ],
              ),
            )
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
