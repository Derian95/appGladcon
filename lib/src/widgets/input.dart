import 'package:flutter/material.dart';


enum TextInputTypeOption {
  text,
  number,
  email,
}

class TextForm extends StatelessWidget {
  final String placeholder;
  final String? Function(String?) validator;
  final String labelText;
  final int maxLength;
  final TextInputTypeOption inputType;
  
  const TextForm({super.key, 
    required this.placeholder,
    required this.validator,
    required this.labelText, required this.maxLength, required this.inputType,
  });

  @override
  Widget build(BuildContext context) {

     TextInputType keyboardType;
    switch (inputType) {
      case TextInputTypeOption.number:
        keyboardType = TextInputType.number;
        break;
      case TextInputTypeOption.email:
        keyboardType = TextInputType.emailAddress;
        break;
      case TextInputTypeOption.text:
      default:
        keyboardType = TextInputType.text;
        break;
    }


    return TextFormField(
      keyboardType: keyboardType,
      maxLength: maxLength,
      showCursor: true,
      validator: validator,
      decoration: InputDecoration(
        counterText: '',
        contentPadding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        suffixIcon: const Align(
          widthFactor: 1.0,
          heightFactor: 1.0,
          child: Icon(Icons.person),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50.0),
          borderSide: const BorderSide(
            width: 1,
            color: Color.fromARGB(255, 196, 196, 196),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.deepOrangeAccent),
          borderRadius: BorderRadius.circular(50.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color.fromARGB(255, 214, 0, 0)),
          borderRadius: BorderRadius.circular(50.0),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Color.fromARGB(255, 214, 0, 0)),
          borderRadius: BorderRadius.circular(50.0),
        ),
        labelText: labelText,
        hintText: placeholder,
      ),
    );
  }
}
