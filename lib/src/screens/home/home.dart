import 'package:flutter/material.dart';
import 'package:gladcon/src/widgets/custom_app_bar.dart';
import 'menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: CustomAppBar(
        title: 'GladconApp', 
        leading: false,
        actionsList: <Widget>[
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
        ]
      ),

      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.deepOrange,
          ),
          child: Column(
            children: [
              SizedBox(
                  width: double.maxFinite,
                  height: size.height / 5.5,
                  child: const Padding(
                    padding:EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      
                      children: [
                        Text('Bienvenido deriandar', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.white),),
                        SizedBox(height: 5,),
                        Text('Id 123k12jkj1kj2', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400, color: Colors.white70),),
                        SizedBox(height: 20,),
                        Text('Token generado', style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400, color: Colors.white70),),
                      ],
                    ),
                  )
                  ),
                  
              Expanded(
                  child: Container(
                    decoration:   const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      child: GridView.builder(
                        
                                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: .0,
                        mainAxisSpacing: 3.0,
                        childAspectRatio: 10 / 7),
                                  itemCount: cardData.length,
                                  itemBuilder: (context, index) {
                      return cardData[index];
                                  },
                                ),
                    ),
                  ))
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}




// ListView(
//                 children: const <Widget>[
//                   CardMenu(
//                       title: 'Asistencia',
//                       description: 'Soy una descripcion',
//                       img: 'assets/narrruto.jpg', icon: Icons.assignment_turned_in_outlined, route: '/assistance',),
//                   CardMenu(
//                       title: 'Asistencia Manual',
//                       description: 'Soy una descripcion',
//                       img: 'assets/narrruto.jpg', icon: Icons.assignment_late_outlined,route: '/manualAssistance'),
//                   CardMenu(
//                       title: 'Visita',
//                       description: 'Soy una descripcion',
//                       img: 'assets/narrruto.jpg', icon: Icons.volunteer_activism_outlined,route: '/visit'),
//                   CardMenu(
//                       title: 'Alertas',
//                       description: 'Soy una descripcion',
//                       img: 'assets/narrruto.jpg', icon: Icons.crisis_alert_outlined,route: '/alert'),
//                   CardMenu(
//                       title: 'Control de Acceso',
//                       description: 'Soy una descripcion',
//                       img: 'assets/narrruto.jpg', icon: Icons.lan_outlined,route: '/control'),
//                   CardMenu(
//                       title: 'Empadronamiento',
//                       description: 'Soy una descripcion',
//                       img: 'assets/narrruto.jpg', icon: Icons.person_2_outlined,route: '/census'),
//                   CardMenu(
//                       title: 'Salud',
//                       description: 'Soy una descripcion',
//                       img: 'assets/narrruto.jpg', icon: Icons.colorize_outlined,route: '/health'),
//                 ],
//               ),