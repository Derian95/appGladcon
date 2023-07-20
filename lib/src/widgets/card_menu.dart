import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  final String title;
  final String description;
  final String img;
  final IconData icon;
  final String route;

  const CardMenu(
      {super.key,
      required this.title,
      required this.description,
      required this.img, required this.icon, required this.route});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () {
         Navigator.pushNamed(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Container(
              width: size.width,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromARGB(255, 255, 255, 255),
                  boxShadow: [
                    BoxShadow(
                        color: const Color.fromARGB(255, 206, 206, 206)
                            .withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 8,
                        offset: const Offset(0, 6))
                  ]),
              child: 
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Row(children: [
                  Expanded(
                    flex: 8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text(title, style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w900, color: Color.fromARGB(255, 54, 54, 54)),),
                      Text(description,style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: Color.fromARGB(255, 136, 136, 136),),),
                    ]),
                  ),
                      Expanded(
                      flex: 2,
                      // child: Image.asset(img)),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration:  BoxDecoration(
                          color: const Color.fromARGB(255, 247, 121, 83),
                           borderRadius: BorderRadius.circular(10),
                           
                           
                        ),
                        child: Icon(icon,size: 45, color:const Color.fromARGB(255, 255, 255, 255) ),),)
                ]),
              )),
        
      ),
    );
  }
}
