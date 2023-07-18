import 'package:flutter/material.dart';
import 'package:gladcon/src/widgets/custom_app_bar.dart';

import '../../widgets/card_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: CustomAppBar(title: 'GladconApp', actionsList: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
          tooltip: 'Soy un bsutun',
        ),
         IconButton(
          onPressed: () {
           Navigator.pushNamed(context, '/');
          },
          icon: const Icon(Icons.output_rounded),
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
                    height: size.height / 7,
                    child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        child: Text(
                          'Bienvenido deriandar',
                          style: TextStyle(fontSize: 25, color: Colors.white),
                        ))),
                // Column(
                //   children: [
                    
                //   ],
                // ),
              ],
            ),
          
            Expanded(
              child: ListView(
                children: const <Widget>[
                  CardMenu(
                      title: 'Asistencia',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg', icon: Icons.assignment_turned_in_outlined, route: '/assistance',),
                  CardMenu(
                      title: 'Asistencia Manual',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg', icon: Icons.assignment_late_outlined,route: '/manualAssistance'),
                  CardMenu(
                      title: 'Visita',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg', icon: Icons.volunteer_activism_outlined,route: '/visit'),
                  CardMenu(
                      title: 'Alertas',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg', icon: Icons.crisis_alert_outlined,route: '/alert'),
                  CardMenu(
                      title: 'Control de Acceso',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg', icon: Icons.lan_outlined,route: '/control'),
                  CardMenu(
                      title: 'Empadronamiento',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg', icon: Icons.person_2_outlined,route: '/census'),
                  CardMenu(
                      title: 'Salud',
                      description: 'Soy una descripcion',
                      img: 'assets/narrruto.jpg', icon: Icons.colorize_outlined,route: '/health'),
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
