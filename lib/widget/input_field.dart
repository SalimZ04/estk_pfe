
import 'package:estk_pfe/constant.dart';
import 'package:flutter/material.dart';


class InputField extends StatefulWidget {
  final String hinttext;
  final TextEditingController controller;
  final bool isPassword;

  const InputField({
    Key? key,
    required this.hinttext,
    required this.controller, required this.isPassword,
  }) : super(key: key);

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      decoration: InputDecoration(
        suffixIcon:widget.isPassword ? Icon(Icons.remove_red_eye,color: firstcolor,) : Icon(Icons.done,color: firstcolor,) ,
        fillColor: Colors.transparent,
        hintStyle: const TextStyle(fontSize: 15),
        filled: true,
        hintText: widget.hinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide:  BorderSide(color: secondcolor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide:  BorderSide(color: secondcolor),
        ),
        focusColor: firstcolor,
      ),
      obscureText:widget.isPassword,
    );
  }
}
