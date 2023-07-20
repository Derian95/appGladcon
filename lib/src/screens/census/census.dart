import 'package:flutter/material.dart';
import 'package:gladcon/src/widgets/input.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/custom_dropdawn.dart';

const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
List<String> fruits = ['Apple', 'Banana', 'Orange', 'Mango'];
class CensusScreen extends StatelessWidget {
  const CensusScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    String getFruitLabel(String? fruit) {
      return fruit != null ? 'Fruit: $fruit' : 'Select a fruit';
    }
    String getFruitValue(String? fruit) {
    return fruit != null ? fruit.toLowerCase() : '';
  }

    return Scaffold(
      appBar: const CustomAppBar(),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.deepOrange,
          ),
          child: Column(
            children: [
              SizedBox(
                  width: double.maxFinite,
                  height: size.height / 12,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Empadronamiento',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                  child: Container(
                width: size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 10),
                    child: Column(
                      children: [
                        TextForm(
                          placeholder: 'Dni',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese un usuario';
                            }
                            if (value == 'derian') {
                              return null;
                            }
                            return 'Usuario no encontrado';
                          },
                          labelText: 'Dni',
                          inputType: TextInputTypeOption.text,
                          maxLength: 2,
                        ),
                        TextForm(
                          placeholder: 'Maquina',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Ingrese un usuario';
                            }
                            if (value == 'derian') {
                              return null;
                            }
                            return 'Usuario no encontrado';
                          },
                          labelText: 'Maquina',
                          inputType: TextInputTypeOption.number,
                          maxLength: 1,
                        ),
                       DropdownField<String>(
                          items: fruits,
                          hintText: 'Seleccione tipo cliente',
                          itemLabel: getFruitLabel,
                          itemValue: getFruitValue,
                          onSaved: (selectedFruit) {
                            // Aquí puedes guardar el valor seleccionado (selectedFruit)
                          },
                          validator: (selectedFruit) {
                            if (selectedFruit == null || selectedFruit.isEmpty) {
                              return 'Please select a fruit';
                            }
                            return null;
                          },
                        ),
                         DropdownField<String>(
                          items: fruits,
                          hintText: 'Seleccione tipo frecuencia',
                          itemLabel: getFruitLabel,
                          itemValue: getFruitValue,
                          onSaved: (selectedFruit) {
                            // Aquí puedes guardar el valor seleccionado (selectedFruit)
                          },
                          validator: (selectedFruit) {
                            if (selectedFruit == null || selectedFruit.isEmpty) {
                              return 'Please select a fruit';
                            }
                            return null;
                          },
                        ),
                         DropdownField<String>(
                          items: fruits,
                          hintText: 'Seleccione tipo juego',
                          itemLabel: getFruitLabel,
                          itemValue: getFruitValue,
                          onSaved: (selectedFruit) {
                            // Aquí puedes guardar el valor seleccionado (selectedFruit)
                          },
                          validator: (selectedFruit) {
                            if (selectedFruit == null || selectedFruit.isEmpty) {
                              return 'Please select a fruit';
                            }
                            return null;
                          },
                        ),
                         DropdownField<String>(
                          items: fruits,
                          hintText: 'Entrego dni',
                          itemLabel: getFruitLabel,
                          itemValue: getFruitValue,
                          onSaved: (selectedFruit) {
                            // Aquí puedes guardar el valor seleccionado (selectedFruit)
                          },
                          validator: (selectedFruit) {
                            if (selectedFruit == null || selectedFruit.isEmpty) {
                              return 'Please select a fruit';
                            }
                            return null;
                          },
                        ),
                         DropdownField<String>(
                          items: fruits,
                          hintText: 'Fuente',
                          itemLabel: getFruitLabel,
                          itemValue: getFruitValue,
                          onSaved: (selectedFruit) {
                            // Aquí puedes guardar el valor seleccionado (selectedFruit)
                          },
                          validator: (selectedFruit) {
                            if (selectedFruit == null || selectedFruit.isEmpty) {
                              return 'Please select a fruit';
                            }
                            return null;
                          },
                        ),
                        // DropdownButtonFormField(items: items, onChanged: onChanged)
                      ],
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
