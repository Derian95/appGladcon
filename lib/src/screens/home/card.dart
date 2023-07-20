import 'package:flutter/material.dart';

class CardMenuOption extends StatelessWidget {
  final String title;
  final String description;
  final String img;
  final IconData icon;
  final String route;

  const CardMenuOption(
      {super.key,
      required this.title,
      required this.description,
      required this.img,
      required this.icon,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color.fromARGB(255, 255, 255, 255),
              boxShadow: [
                BoxShadow(
                    color: const Color.fromARGB(255, 206, 206, 206)
                        .withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 8,
                    offset: const Offset(0, 6))
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Icon(
                icon,
                size: 55,
                color: Colors.deepOrangeAccent,
              ),
              const SizedBox(height: 9,),
              Text(
                title,
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 54, 54, 54)),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
