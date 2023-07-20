import 'package:flutter/material.dart';

class DropdownField<T> extends FormField<T> {
  final List<T> items;
  final String Function(T?) itemLabel;
  final T Function(T?) itemValue;
  final String hintText;

  DropdownField({super.key, 
    required this.items,
    required this.hintText,
    required this.itemLabel,
    required this.itemValue,
    FormFieldSetter<T>? onSaved,
    FormFieldValidator<T>? validator,
    T? initialValue,
  }) : super(
          onSaved: onSaved,
          validator: validator,
          initialValue: initialValue,
          builder: (FormFieldState<T> state) {
            return InputDecorator(
              decoration: InputDecoration(
                hintText: hintText,
                fillColor: Colors.red,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50.0),
                ),
                
              ),
              isEmpty: state.value == null,
              child: DropdownButtonHideUnderline(
                child: DropdownButton<T>(
                  isDense: true,
                  // itemHeight: 100,
                  value: state.value,
                  onChanged: state.didChange,
                  items: items.map((T item) {
                    return DropdownMenuItem<T>(
                      alignment: Alignment.center,
                      value: itemValue(item),
                      child: Text(itemLabel(item)),
                    );
                  }).toList(),
                ),
              ),
            );
          },
        );

  @override
  FormFieldState<T> createState() => _DropdownFieldState<T>();
}

class _DropdownFieldState<T> extends FormFieldState<T> {
  @override
  DropdownField<T> get widget => super.widget as DropdownField<T>;
}
