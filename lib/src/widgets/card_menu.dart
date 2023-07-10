import 'package:flutter/material.dart';

class CardMenu extends StatelessWidget {
  const CardMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        elevation: 20,
        color: Colors.redAccent,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const SizedBox(
                height: 8,
                width: double.maxFinite,
              ),
              const Text('Is a card'),
              TextButton(
                  onPressed: () {
                  },
                  child: const Text('Press'))
            ],
          ),
        ),
      ),
    );
  }
}
