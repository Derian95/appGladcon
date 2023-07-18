import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          Column(children: [
            Expanded(
              flex: 4,
              child: Container(
                  decoration:
                      const BoxDecoration(color: Colors.deepOrangeAccent),
                  child: const Center()),
            ),
            Expanded(
              flex: 6,
              child: Container(
                decoration: const BoxDecoration(color: Colors.white),
              ),
            )
          ]),
          SafeArea(
            child: Column(children: [
              const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.local_see_outlined,
                      size: 140,
                      color: Colors.white,
                    ),
                    Text(
                      'GladconApp',
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    )
                  ]),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 45, horizontal: 20),
                child: Container(
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
                    padding: const EdgeInsets.symmetric(
                        vertical: 45, horizontal: 20),
                    child: Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const MyCustomForm(),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

/*
* Formulario de inicio de sesion (18/07/2023)
*/

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  FormLogin createState() {
    return FormLogin();
  }
}

class FormLogin extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();
  Future<void> login() async {
    if (_formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Espere'),
        backgroundColor: Colors.blue,
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Inicio de sesion',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 40,
          ),
          TextFormField(
            maxLength: 20,
            showCursor: true,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese un usuario';
              }
              if (value == 'derian') {
                return null;
              }
              return 'Usuario no encontrado';
            },
            decoration: InputDecoration(
              counterText: '',
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              suffixIcon: const Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Icon(Icons.person),
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                      width: 1, color: Color.fromARGB(255, 196, 196, 196))),
              focusedBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(width: 1, color: Colors.deepOrangeAccent),
                borderRadius: BorderRadius.circular(50.0),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Color.fromARGB(255, 214, 0, 0)),
                borderRadius: BorderRadius.circular(50.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Color.fromARGB(255, 214, 0, 0)),
                borderRadius: BorderRadius.circular(50.0),
              ),
              labelText: 'Ingrese su nombre',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            maxLength: 20,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Ingrese su clave';
              }
               
              return null;
            },
            obscureText: true,
            decoration: InputDecoration(
              counterText: '',
              suffixIcon: const Align(
                widthFactor: 1.0,
                heightFactor: 1.0,
                child: Icon(Icons.remove_red_eye),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                      width: 1, color: Color.fromARGB(255, 196, 196, 196))),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                  borderSide: const BorderSide(
                      width: 1, color: Colors.deepOrangeAccent)),
              errorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Color.fromARGB(255, 214, 0, 0)),
                borderRadius: BorderRadius.circular(50.0),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 1, color: Color.fromARGB(255, 214, 0, 0)),
                borderRadius: BorderRadius.circular(50.0),
              ),
              labelText: 'Password',
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 60,
            child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.deepOrangeAccent),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ),
                onPressed: () {
                  // Navigator.pushNamed(context, '/home');
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushNamed(context, '/home');
                  }
                },
                child: const Text(
                  'Ingresar',
                  style: TextStyle(color: Colors.white),
                )),
          )
        ],
      ),
    );
  }
}
