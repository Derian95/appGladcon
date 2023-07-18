import 'package:flutter/material.dart';
import 'package:gladcon/src/widgets/custom_app_bar.dart';

class AssistanceScreen extends StatefulWidget {
  const AssistanceScreen({super.key});

  @override
  State<AssistanceScreen> createState() => _AssistanceScreenState();
}

class _AssistanceScreenState extends State<AssistanceScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const CustomAppBar(title: 'GladconApp',),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        child: Column(
          children: [
            // const Icon(Icons.drive_file_rename_outline_sharp),
           TextFormField(
              maxLength: 20,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Ingrese su clave';
                }
                 
                return null;
              },
              decoration: InputDecoration(
                counterText: '',
                suffixIcon: const Align(
                  widthFactor: 1.0,
                  heightFactor: 1.0,
                  child: Icon(Icons.search),
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
                labelText: 'Nro. Documento',
              ),
            ),
          ],
        ),
      ),
    );
  }
}