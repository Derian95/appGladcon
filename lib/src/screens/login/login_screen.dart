import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Column(children: [
            Expanded(
              flex: 4,
              child: Container(
                decoration: const BoxDecoration(color: Colors.deepOrangeAccent),
              ),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
              ),
            )
          ]),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
              child: Container(
                height: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(255, 184, 184, 184)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: const Offset(0, 6))
                    ]),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
                  child: Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 20, horizontal: 25),
                            suffixIcon: const Align(
                              widthFactor: 1.0,
                              heightFactor: 1.0,
                              child: Icon(Icons.person),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50.0),
                                borderSide: const BorderSide(
                                    width: 1,
                                    color: Color.fromARGB(255, 196, 196, 196))),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Colors.deepOrangeAccent),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            labelText: 'Ingrese su nombre',
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              suffixIcon: const Align(
                                widthFactor: 1.0,
                                heightFactor: 1.0,
                                child: Icon(Icons.remove_red_eye),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 25),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide: const BorderSide(
                                      width: 1,
                                      color:
                                          Color.fromARGB(255, 196, 196, 196))),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50.0),
                                  borderSide: const BorderSide(
                                      width: 1,
                                      color: Colors.deepOrangeAccent)),
                              labelText: 'Password',
                              floatingLabelStyle:
                                  const TextStyle(color: Colors.orangeAccent)),
                        ),
                        TextButton(
                         style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.red),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                            ),
                        ),

                          onPressed: () {
                          
                          },
                          child: const Text('Ingresar', style: TextStyle(color: Colors.white),))
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
