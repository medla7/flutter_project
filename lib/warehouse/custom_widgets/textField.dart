import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class textField extends StatelessWidget {
  //final String type; // Add this if you need to manage the text externally
  final double height;
  final double width;
  final String text;
  final String type;
  const textField({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      //color: Colors.amber,
      child: TextFormField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(
            color: Colors.red,
            fontFamily: "akshar",
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 3.0,
            ),
          ),
        ),
        
          keyboardType : type=="number" ? TextInputType.number: TextInputType.text,
          inputFormatters:type=="number"? <TextInputFormatter>[
            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
            FilteringTextInputFormatter.digitsOnly,
          ]:null,
      ),
    );
  }
}
